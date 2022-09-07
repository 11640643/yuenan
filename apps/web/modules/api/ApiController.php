<?php

namespace Api;

use C\L\WebController;
use C\P\ImageCode\ImageCode;
use C\P\QRcode\QRcode;

class ApiController extends WebController
{
    protected function init()
    {
        $this->language_fields = [
            'name'
        ];
    }
    
    // pay777 签名
    private function pay777_calcSign( $amount,$orderId){
        $apiKey = '3xc75c5ymwh0llipaun2nacrvt02rxsg';
        $merchantNo = "d759ff4d093a41e4be9ef0eac82ce2e2";
        $calcStr = $apiKey . $orderId . $amount;
        return md5( strtolower($calcStr) );
    }
    
    // 支付-代收-通知
    public function pay777paymentNoticeAction(){
        


        $json_raw = file_get_contents("php://input");
        $json_data = (array)json_decode($json_raw,true,512,JSON_BIGINT_AS_STRING);
        //打印日志
        $file = "/www/wwwroot/jk.aoyo-electonics.com/public/logs/pay777notice_" . date("Ymd") . ".log";
        $ct = date("Y-m-d H:i:s", time());
        error_log("收到的回调数据" . var_export($json_data, true) . " \r\n", 3, $file);     

        if ( $json_data['code'] == 1 ){
            $json_data['data'] = json_decode($json_data['data'] ,true);
            $order = $this->s_pay_order->search( ['orderNo'=>$json_data['data']['orderid'] ]);
            
            // 生成签名
            $sign = $this->pay777_calcSign( $order['orderAmount'],$json_data['data']['orderid'] );
            if ($sign !=$json_data['data']['sign']  ){echo '验签失败';exit();}
            if ($order['state']!=1){
                $user = $this->s_user->search($order['uid']);
                
                $add = [
                    'uid' =>$order['uid'],
                    'channel' => $order['payname'] ,
                    'money' => $order['orderAmount'],
                    'name' => $user['name'],
                    'third_order_id' => $order['merchantOrderNo'],
                    'remark' => '',
                ];
                $this->di['db']->begin();
                $this->s_invest->save($add);
                $this->s_pay_order->update( $order['id'],['state'=>1] );
                $this->di['db']->commit();
            }
        }

        echo 'success';
        exit();
    }
    
    // 支付-代收
    public function pay777paymentAction()
    {
        $apiKey = '3xc75c5ymwh0llipaun2nacrvt02rxsg';
        $merchantNo = "d759ff4d093a41e4be9ef0eac82ce2e2";
        $money = $this->getValue('money', true);
        $money = sprintf("%.4f", $money);
        $payname= $this->getValue('payname', true);
        $invest_min_money= $this->getValue('invest_min_money', true);
        
        if (!$this->uid ||$this->uid<=0 ){exit();}
        if ( $money<=0 || $invest_min_money > $money  ){exit();}
        
        $merchantOrderNo = $payname . time() . mt_rand(20,1000);
        // $countryCode = "BRA";
        // $currencyCode = "BRL";
        $paymentType = $payname;
        $paymentAmount = $money;
        $goods = "iphone";
        $notifyUrl = "https://www.lalgg.com/api/api/pay777paymentnotice";
        $pageUrl = "https://www.lalgg.com/#/user";
        $returnedParams = '';
        $extendedParams = '';
    
        // 生成签名
        $sign = $this->pay777_calcSign( $money,$merchantOrderNo);

        $postdata = array(
            'userid'    => $merchantNo,             // 商户ID平台提供
            'orderid'   => $merchantOrderNo,        // 平台不会判断orderid是否重复，该字段平台主要用作签名
            'type'      => $paymentType,            // zalo, momo
            'amount'    => $money,                  // 小数，保留4位，不足4位补0
            'notifyurl' => $notifyUrl,              // 平台会将订单相关信息推送至该地址
            'returnurl' => $pageUrl,                // 最终用户支付后，平台支付页面跳转到商户的地址
            'sign'      => $sign,                   // 签名
            'note'      => '',                      // 平台通知或商户查询时原文返回
            //'payload'   => $extendedParams,         // json格式字符串
            );
            

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, "https://l13k9h19f1.77777.org/api/create");
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        $data = json_encode($postdata);
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json; charset=utf-8',
            'Content-Length:' . strlen($data) ,
            'Cache-Control: no-cache',
            'Pragma: no-cache'
        ));
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $res = curl_exec($curl);
        $errorno = curl_errno($curl);
        curl_close($curl);            
        //打印日志
        $file = "/www/wwwroot/jk.aoyo-electonics.com/public/logs/pay777payment__" . date("Ymd") . ".log";
        $ct = date("Y-m-d H:i:s", time());
        error_log("收到的回调数据" . var_export($res, true) . " \r\n", 3, $file);        
        $res = json_decode($res,true);
        $data = $res;
        $data['data'] = json_decode($data['data'] ,true);
        if ($data['code'] == 1 ){
            $order['payname'] = $payname;
            $order['uid'] =$this->uid;
            $order['merchantNo'] =$merchantNo;
            $order['merchantOrderNo'] =$merchantOrderNo;
            $order['orderNo'] =$merchantOrderNo;
            $order['orderAmount'] = $data['data']['amount'];
            $order['addtime'] = time();
            $order['paymentType'] = '代收';
            $result = $this->s_pay_order->save($order);

        }
        $res['code'] = intval($res['code']);
        $res['data'] = json_decode($res['data'] ,true);
        
        if ( $res['code'] == 1 ){$res['code']=200;}
 
        echo json_encode($res);exit();
    }
  
    
    public function qrcodeAction()
    {
        $uid = $this->getValue('uid', true, 'int');
        $user = $this->s_user->search($uid);
        $md5 = @md5_file('/home/www/wwwroot/station_admin/www/web/h5/index.html');
        $url = "/index.html?v=" . substr($md5, 0, 6) . "&m={$user['mobile']}#/invite";
        ob_clean();
        QRcode::png('https://www.lalgg.com' . $url, 8, 0);
    }
    
    public function xcAction()
    {
        $data = $this->s_config->get('xc');
        if ($data['is_open'] == 'Y') {
            $this->success([
                'content' => $data['content']
            ]);
        }
        $this->error();
    }

    public function imageCodeAction()
    {
        $code = new ImageCode();
        $code->initialize([
            'width' => 100,     // 宽度
            'height' => 40,     // 高度
            'line' => true,     // 直线
            'curve' => false,   // 曲线
            'noise' => 1,   // 噪点背景
            'fonts' => []       // 字体
        ]);

        $base64Image = $code->create()->toBase64($this->ssidKey);
        $this->ssid->set('image_code', $code->getText());
        $this->success([
            'code' => $base64Image,
        ]);
    }

    //首页
    public function indexAction()
    {
        $config = $this->s_config->get('web');
        $items = $this->s_item->searchAll([
            'is_show_index' => 'Y',
            'status' => 'Y',
            //'schedule' => 100,
            'begin_time' => time()
        ], ['schedule' => '<', 'begin_time' => '<='], [], 'sort desc');
        foreach ($items as $key=>$item) {
            if((int)$item['schedule']>=100){
                unset($items[$key]);
                continue;
            }
            #$items[$key]['money'] = $item['stock'];    
            $items[$key]['apr_money'] = bcmul($item['min_money'], $item['apr'] / 100, 2);
            $config_buy_count = $item['stock']-$item['rem_count'];
            $curren_buy_count = $this->s_il->getCount(['cid'=>$item['id']]);
            $items[$key]['rem_count'] =  $item['rem_count'] >0 ? $item['rem_count']-$curren_buy_count:0;
            $items[$key]['buy_count'] = $curren_buy_count+$config_buy_count>$item['stock']?$item['stock']:$curren_buy_count+$config_buy_count;
            $items[$key]['schedule'] = isset($item['stock']) && $item['stock'] >0?100*bcdiv($items[$key]['buy_count'],$item[ 'stock'],4):'10';  
            $items[$key]['type_name'] = $this->s_item->getStatusConfig()['type'][$item['type']];
            // 配置需要转换成站点语言的字段配置
            if($this->language != 'cn'){
                foreach($this->language_fields as $v){
                    $items[$key]['name'] = $item[$v.'_'.$this->language];
                }
            }
        }
        $data = [
            'items' => $items,
            'notice' => $config['notice'],
            'kefu_tel' => $config['kefu_tel'],
            'ipcc_no' => $config['ipcc_no'],
            'is_login' => $this->uid > 0 ? true : false,
            'version' => $config['version'],
            'logo' => $config['logo'],
            'ad' => $this->s_config->get('ad'),
            //'footer' => $this->ssid->get('footer'),
           'footer'=>'n2',
         'app' => array_merge($this->s_config->get('app'), ['app_link' => $config['app_link']])
        ];

        $this->success($data);
    }

    private function getStepInfo($step)
    {
        $todayKm = bcmul(0.61 / 1000, $step, 2);
        $data = [
            'today_step' => intval($step),
            'today_km' => floatval($todayKm),
            'today_kll' => round(60 * $todayKm * 1.036, 2),
        ];

        return $data;
    }


    public function syncAction()
    {
        $devNo = $this->getValue('dev_no', false, 'string');
        $devType = $this->getValue('dev_type', false, 'string');
        $dev_oaid = $this->getValue('dev_oaid', false, 'string');
        $step = $this->getValue('step', false, 'int') ?? 0;
        if($this->uid > 0 ){
            $user = $this->s_user->search(['uid'=>$this->uid]);
            #防止脚本大量无效数据,只取当日未认证渠道的用户
            if($user['channel']=='domain' && date("Ymd",$user['addtime'])==date("Ymd") && (!empty($devNo) || !empty($dev_oaid))){
                if(!empty($devNo) && $this->ssid->get('dev_no') != $devNo){
                    $this->s_user->update($this->uid, ['dev_no' => $devNo, 'dev_type' => $devType]);
                }
                if(!empty($dev_oaid) && $this->ssid->get('dev_oaid') != $dev_oaid){
                    $this->s_user->update($this->uid, ['dev_oaid' => $dev_oaid, 'dev_type' => $devType]);
                }
                $flowArray = [
                    'dev_type' => $devType,
                    'dev_oaid'=>$dev_oaid,
                    'dev_no' => md5($devNo),
                    'uid' => $this->uid,
                ];
                $this->cache->rPush('flow_list', json_encode($flowArray));
            }    
            //$data['check_dev_no'] = true;
        }
        if ($this->uid <= 0 && (!empty($devNo) || !empty($dev_oaid))) {
            if ($devType == 'ios') {
                $where = ['idfa' => $devNo, 'is_open_index' => 0];
                $flowArr = $this->s_flowks->search($where);
            } else {
                $where = [ 'is_open_index' => 0, 'imei' => $devNo, 'oaid' => $dev_oaid];
                $flowArr = $this->s_flowks->search($where, ['imei' => '=|', 'oaid' => '|=']);
            }
            if (!empty($flowArr)) {
                $flowArray = [
                    'dev_type' => $devType,
                    'dev_oaid' => $dev_oaid,
                    'dev_no' => md5($devNo),
                    'uid' => 0,
                ];
                $this->cache->rPush('flow_list', json_encode($flowArray));
            }
        }
        $stepKey = 'step_' . date('Ymd');
        $this->ssid->set($stepKey, $step);
        $this->ssid->set('dev_oaid', $dev_oaid);
        $this->ssid->set('dev_no', $devNo);
        $this->ssid->set('dev_type', $devType);
        $data = [
            'check_dev_no' => false,
            //'footer' => $this->ssid->get('footer')
            'footer'=>'n2'  
    ];
        $data['is_open_notice_dialog'] = $this->s_notice->syncNotice($this->uid);
        $data['step'] = $this->getStepInfo($step);
        // 将步数同步到表
        if ($step > 0) {
            $this->s_packlist->updates([
                'status' => 'D',
                'ok_step' => $step,
                'ok_time' => time(),
                'uptime' => time()
            ], ['uid' => $this->uid, 'no_date' => date('Ymd')]);
        }
        // 将步数入redis缓存
        // $this->setStepToRedis($this->uid, $step);
        $this->success($data);
    }

    /**
     * 将步数入redis缓存
     */
    public function setStepToRedis($uid, $step)
    {
        if ($step <= 0) {
            return false;
        }
        $date = date('Ymd');
        $cache_key = "sync:step:{$date}";
        $second = 86400 + 3600;
        $this->cache->zAdd($cache_key, $uid, $step);
        $this->cache->expire($cache_key, $second);
    }

    //登录
    public function loginAction()
    {
        $username = $this->getValue('username', true);
        $password = $this->getValue('password', true);

        if ($this->s_user->login($username, $password)) {
            $this->s_item->promotionFooter($username);
            $this->success(['footer' => $this->ssid->get('footer')]);
        }

        $this->error();
    }

    public function logoutAction()
    {
        $this->ssid->destory();
        $this->success();
    }

    //注册
    public function registerAction()
    {

        // 二开
        // 渠道注册
        $place_id = $this->getValue('place_id');

        $username = $this->getValue('mobile', true);
        // $username = $this->getValue('email', true);
        $password = $this->getValue('password', true);
        $code = $this->getValue('image_code', true);
            
        if($this->ssid->get('image_code') != $code){
            throw new \Exception($this->di['message']->getCodeMsg());
        }
        
        $tMobile = $this->getValue('t_mobile', false, 'string');
        $devNo = $this->ssid->get('dev_no');
        $dev_oaid = $this->ssid->get('dev_oaid');
        $devType = $this->ssid->get('dev_type');
        $channel = $this->ssid->get('channel');
        if ($this->s_user->register($username, $password, $code, $tMobile, $devNo, $devType, $channel,$dev_oaid,$username,$place_id)) {
            $config = $this->s_config->get('web');
            $data = [
                'app_link' => $config['app_link'],
            ];
            $promotion_host1 = @(array)$this->di['config']->get('config')->promotion_host1;
            if (!empty($promotion_host1) && in_array($_SERVER['HTTP_HOST'] ?? 'nil', $promotion_host1)) {
                $this->di['cache']->set('promotion:'.$username, $_SERVER['HTTP_HOST'] ?? 'nil', (3600 * 24 * 365));
                $this->di['s_user']->updates(['channel' => 'wxpop1'], ['mobile' => $username]);
            }
            $promotion_host2 = @(array)$this->di['config']->get('config')->promotion_host2;
            if (!empty($promotion_host2) && in_array($_SERVER['HTTP_HOST'] ?? 'nil', $promotion_host2)) {
                $this->di['cache']->set('promotion:'.$username, $_SERVER['HTTP_HOST'] ?? 'nil', (3600 * 24 * 365));
                $this->di['s_user']->updates(['channel' => 'wxpop2'], ['mobile' => $username]);
            }
            $promotion_host3 = @(array)$this->di['config']->get('config')->promotion_host3;
            if (!empty($promotion_host3) && in_array($_SERVER['HTTP_HOST'] ?? 'nil', $promotion_host3)) {
                $this->di['cache']->set('promotion:'.$username, $_SERVER['HTTP_HOST'] ?? 'nil', (3600 * 24 * 365));
                $this->di['s_user']->updates(['channel' => 'kuaishou1'], ['mobile' => $username]);
            }
            $data['promotion_host'] = array_merge($promotion_host1, $promotion_host2, $promotion_host3);
            $this->success($data);
        }

        $this->error();
    }

    //找回密码
    public function forgetpwdAction()
    {
        $username = $this->getValue('username', true);
        $password = $this->getValue('password', true);
        $code = $this->getValue('code', true);

        if ($this->s_user->forgetpwd($username, $password, $code)) {
            $this->success();
        }

        $this->error();
    }

    //发送验证码
    public function codeAction()
    {
        $mobile = $this->getValue('mobile', true, 'string');
        $type = $this->getValue('type', true);

        if ($type == 'register' || $type == 'forgetpwd') {
            // $imageCode = $this->getValue('image_code', true, 'string');
            // if ($this->ssid->get('image_code') != strtolower($imageCode)) {
            //     $this->error($this->translate['img_code_error']);
            // }
            // $this->ssid->set('image_code', '');
            if ($this->s_code->send($mobile, $type)) {
                $this->success();
            }else{
                $this->error();  
            }
        }else{
            $this->success();
        }
        // if ($this->s_code->send($mobile, $type)) {
        //     $this->success();
        // }

        // $this->error();
    }
    //发送验证码
    public function emailcodeAction()
    {
        // $mobile = $this->getValue('mobile', true, 'string');
        $email = $this->getValue('email', true, 'string');
        $type = $this->getValue('type', true);

        // if ($type == 'register' || $type == 'forgetpwd') {
        //     $imageCode = $this->getValue('image_code', true, 'string');
        //     if ($this->ssid->get('image_code') != strtolower($imageCode)) {
        //         $this->error($this->translate['img_code_error']);
        //     }
        //     $this->ssid->set('image_code', '');
        // }

        if ($this->s_code->sendEmail($email, $type)) {
            $this->success();
        }

        $this->error();
    }
    //获取配置文件
    public function configAction()
    {

//        $att = ['CDEF89AB45670123', 'CDEF89AB45670123', 'BA98FEDC32107654', 'EFCDAB8967452301'];
//
//        for ($i = 1; $i < 10001; $i++) {
//
//            $att1 = ['C', 'C', 'B', 'E'];
//            $z = sprintf('%04s', dechex($i));
//
//            for ($x = 0; $x < strlen($z); $x++) {
//                //var_dump(hexdec(substr($z, $x, 1)));
//                $att1[$x] = substr($att[$x], hexdec(substr($z, $x, 1)), 1);
//            }
//
//
//            echo $i . '：' . $att1[2] . $att1[3] . $att1[0] . $att1[1] . '3B8E' . '</br>';
//        }
//
//
//        die;


        $data = [
            'ssid' => $this->ssid->register(),
            'ssid_expire_time' => $this->ssid->get('expire_time'),
            //'error' => $this->config->get('error')->toArray(),
            //'aes_key' => $this->ssid->get('aes_key'),
        ];
        $this->success($data);
    }

    // public function webconfigAction()
    // {
    //     $type = $this->getValue('type', true);
    //     $config = $this->s_config->get($type);
    //     if (empty($config)) {
    //         $this->error('未找到相关配置');
    //     }

    //     if ($type == 'web') {
    //         unset($config['auth_key'], $config['sms_key']);
    //     }

    //     $this->success($config);
    // }

    public function webconfigAction()
    {
        $type = $this->getValue('type', true);
        if ($type == 'banner' || $type == 'links') {
            $res = [];
            $banner = $this->s_image->searchAll([
                'type' => $type,
                'status' => 'Y'
            ], [], ['name', 'url', 'thumb', 'sort']);
            $res['banner'] = $banner;
            $this->success($res);
        }
        $config = $this->s_config->get($type);
        if ($type == 'web') {
            unset($config['auth_key'], $config['sms_key']);
        }
        $this->success($config);
    }

    public function imageAction()
    {
        $type = $this->getValue('type', true, 'string');
        $images = $this->s_image->searchAll(['type' => $type, 'status' => 'Y'], [], [], 'sort desc');

        foreach ($images as &$item) {
            if (!strstr($item['url'], 'http')) {
                $item['url'] = '#' . $item['url'];
            }
        }

        $this->success($images);
    }

    public function treeAction()
    {
        $this->error($this->translate['access_error']);
        $background = 'forest_wrap_day';
        if (date('H') > 17 || date('H') < 6) {
            $background = 'forest_wrap_night';
        }
        $data = [
            'fruit' => 0,
            'water' => 0,
            'manure' => 0,
            'type' => 'tree0',
            'background' => $background,
            'tree_rule' => []
        ];

        if ($this->uid) {

            $config = $this->s_config->get('tree');

            $searchTime = strtotime(date('Ymd'));

            $addWater = 0;
            if ($config['login_water'] > 0) {

                // if (!$this->s_funds->search(['uid' => $this->uid, 'type' => 'water', 'stype' => 'login_water', 'addtime' => $searchTime], ['addtime' => '>='])) {
                if ($this->dailyGivingLock('login_water')) {
                    $this->di['s_funds']->add($this->uid, $config['login_water'], 'water', 'login_water', "每日赠送", $this->uid);
                    $addWater = $config['login_water'];
                }

            }

            $addManure = 0;
            if ($config['login_manure'] > 0) {

                // if (!$this->s_funds->search(['uid' => $this->uid, 'type' => 'manure', 'stype' => 'login_manure', 'addtime' => $searchTime], ['addtime' => '>='])) {
                if ($this->dailyGivingLock('login_manure')) {
                    $this->di['s_funds']->add($this->uid, $config['login_manure'], 'manure', 'login_manure', "每日赠送", $this->uid);
                    $addManure = $config['login_manure'];
                }

            }

            $tree = $this->s_tree->search(['uid' => $this->uid, 'status' => ['S', 'D']], ['status' => 'in']);
            if (empty($tree)) {
                $tree = [
                    'value' => 0,
                ];
                $this->s_tree->save([
                    'uid' => $this->uid,
                ]);
            }

            $user = $this->s_user->search($this->uid);
            $data = [
                'fruit' => $user['fruit'],
                'water' => $user['water'] + $addWater,
                'manure' => $user['manure'] + $addManure,
                'type' => $this->s_tree->getTreeType($tree['value']),
                'background' => $background,
                'tree_rule' => json_decode($config['tree_rule']),
                // 'tree_progress' => $this->s_tree->countTreeProgress($config['tree'], $tree),
                'notice' => isset($config['notice']) ? $config['notice'] : '',
                'adv_icon' => $this->s_tree->getAdvicon($this->uid),
            ];
        }

        $this->success($data);

    }

    public function dailyGivingLock($type)
    {
        $redisKey = sprintf('daily:giving:%s:%s:%s', $type, date('Ymd'), $this->uid);
        $isGiving = $this->di['cache']->get($redisKey);
        if ($isGiving) {
            return false;
        }
        return $this->di['cache']->setex($redisKey, 1, (3600 * 24));
    }

    public function uploadAction()
    {

        if (!$this->request->hasFiles()) {
            $this->error($this->translate['upload_empty']);
        }

        $files = $this->request->getUploadedFiles();
        $list = [];
        foreach ($files as $file) {

            $extName = $file->getExtension();
            if (!in_array($extName, ['jpg', 'png', 'jpeg', 'gif'])) {
                continue;
            }

            $path = '/upload/' . date('Y/m/d');
            $filePath = APP_PUBLIC . $path;
            $fileNme = date('YmdHis') . '_' . substr(md5($file->getName() . rand(10, 99)), 0, 8) . '.' . $extName;
            if (!file_exists($filePath)) {
                //echo $filePath;exit;
                if (!@mkdir($filePath, 0755, true)) {
                    $this->error($this->translate['sys_file_error']);
                }
            }
            $file->moveTo(
                $filePath . '/' . $fileNme
            );

            $list[$file->getKey()] = $path . '/' . $fileNme;
        }

        $this->success($list);
    }

}


