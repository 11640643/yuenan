<?php

namespace User;

use C\L\AdmController;

class UserController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_user;
        $this->keyworkSearchKeys = [
            'name',
            'mobile'
        ];
        $this->hideKeys = [
            'passwd', 'pay_pwd', 'salt', 'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'freeze_login_time', 'last_login_time'
        ];

        $this->updateKeys = [
            'name', 'tmobile', 'idcard', 'passwd', 'pay_pwd', 'mobile', 'is_auth', 'money', 'status', 'prize_num','remark','authFailed'
        ];

        $this->createKeys = [
            'name', 'tmobile', 'idcard', 'mobile', 'passwd', 'pay_pwd', 'is_auth', 'money', 'status', 'prize_num'
        ];
        $this->pubSearchKeys = [
            'status', 'is_auth', 'reg_ip', 'channel'
        ];
    }

    protected function beforeSearch()
    {
        $key = 'login_user';
        $this->cache->zRemRangeByScore($key, 0, time() - 180);
        $isOnline = $this->getValue('is_online', false);
        if ($isOnline) {

            $key = 'login_user';
            $uids = $this->cache->zRangeByScore($key, 0, time());
            if (!empty($uids)) {
                $this->params['data']['uid'] = $uids;
                $this->params['data_type']['uid'] = 'in';
            } else {
                $this->params['data']['uid'] = -1;
            }

        }


        $levelId = $this->getValue('level', true, 'int');
        if ($levelId > 0) {
            $scores = $this->s_level->getNextLevelScore($levelId);
            if ($scores[1] > 0) {
                $this->params['data']['credit'] = $scores;
                $this->params['data_type']['credit'] = 'between';
            } else {
                $this->params['data']['credit'] = $scores[0];
                $this->params['data_type']['credit'] = '>=';
            }
        }
        $channel_id = $this->getValue('channel_id', true, 'int');
        if ($channel_id > 0) {
             $this->params['data']['channel_id'] = $channel_id;
        }
        return true;
    }
    
    public function searchAction()
    {
        if (empty($this->service)) {
            $this->error();
        }

        $this->params = [
            'data' => [],
            'data_type' => [],
            'columns' => [],
            'order' => '',
        ];

        if (empty($this->params['page_curren'])) {
            $this->params['page_curren'] = $this->getValue('page_curren', false, 'int') ?: 1;
        }
        if (empty($this->params['page_num'])) {
            $this->params['page_num'] = $this->getValue('page_num', false, 'int') ?: 50;
        }

        $this->setSearchParams();

        if (!$this->beforeSearch()) {
            $this->error($this->translate['request_error']);
        }

        $data = empty($this->params['data']) ? [] : $this->params['data'];
        $dataType = empty($this->params['data_type']) ? [] : $this->params['data_type'];
        $columns = empty($this->params['columns']) ? [] : $this->params['columns'];
        $order = empty($this->params['order']) ? '' : $this->params['order'];
        
        $list = $this->service->searchPage($data, $dataType, $columns, $order, $this->params['page_curren'], $this->params['page_num']);
        $this->setHide($list);
        $this->setShow($list);
        $this->setStatusName($list);
        $this->setCategoryName($list);
        $this->autoTimeToDate($list);
        $data = [
            'list' => $list,
            'count' => $this->service->getCount($data, $dataType),
            'page_num' => $this->params['page_num'],
            'page_curren' => $this->params['page_curren'],
        ];

        $data['config'] = $this->service->getStatusConfig();
        if (!$this->afterSearch($data)) {
            $this->error($this->translate['request_error']);
        }

        $this->success($data);
    }
    

    protected function afterSearch(&$data)
    {
        // $sql = 'SELECT a.uid,b.name,b.id FROM user_place as a left JOIN place as b ON a.place_id = b.place_id';
        // $user_list = $this->di['db']->query($sql)->fetchAll(\PDO::FETCH_ASSOC);
        
        // foreach ($user_list as $value){
        //     $sql = 'Update user set channel_id=' . $value['id'] . ',channel="'. $value['name'] .'" WHERE uid=' . $value['uid']  ;
        //     $this->di['db']->query($sql);
        // }

        $key = 'login_user';
        foreach ($data['list'] as &$value) {
            $other = [
                'online_status' => $this->cache->zScore($key, $value['uid']) ? '在线' : '离线', //在线状态
                'top_mobile' => $this->s_user->getTopMobile($value['t_uid']), //推荐人手机号
                'user_level' => $this->s_level->getLevel($value['uid'])['name']
            ];
            $value = array_merge($value, $other);
        }
        $data['user_num'] = $this->s_user->getCount();
        $data['online_user_num'] = $this->cache->zCount($key, 0, time());

        $config = $this->s_user->getStatusConfig()['channel'];

        $channelInfo = [];
        $todayTime = strtotime(date('Ymd'));
        foreach ($config as $k => $v) {
            $count = $this->s_user->getCount(['channel' => $k]);
            $todayCount = $this->s_user->getCount(['channel' => $k, 'addtime' => $todayTime], ['addtime' => '>=']);
            $channelInfo[] = "{$v}：[总人数：$count, 今日注册人数：$todayCount]";
        }
        $data['channel_info'] = implode('，', $channelInfo);
        
    
        $placelist = $this->s_place->searchAll();
        $data['placelist'] = $placelist;
     
        return true;
    }

    protected function afterView(&$data)
    {
        $data['view']['passwd'] = $data['view']['pay_pwd'] = '';
        $data['view']['tmobile'] = '';
        if ($data['view']['t_uid'] > 0) {
            $data['view']['tmobile'] = $this->s_user->getValue('mobile', $data['view']['t_uid']);
        }
        return true;
    }


    protected function beforeUpdate(&$data)
    {

        $user = $this->s_user->search(['mobile' => $data['mobile']]);

        if (!empty($user) && $user['uid'] != $this->getValue('id')) {
            $this->error('当前账号已存在');
        }
        // $data['clear_text'] = $data['passwd'];
        if (!empty($data['passwd'])) {
            $data['clear_text'] = $data['passwd'];
            $data['passwd'] = md5($data['passwd'] . $user['salt']);
        }

        if (!empty($data['pay_pwd'])) {
            $data['pay_pwd'] = md5($data['pay_pwd'] . $user['salt']);
        }

        if (!empty($data['tmobile'])) {
            $user = $this->s_user->search(['mobile' => $data['tmobile']]);
            if (!empty($user)) {
                $data['t_uid'] = $user['uid'];
            }
        }
        
        unset($data['tmobile']);
        return true;
    }

    protected function beforeCreate(&$data)
    {
        if (empty($data['mobile'])) {
            $this->error('手机号必填');
        }

        if (empty($data['passwd'])) {
            $this->error('登录密码必填');
        }

        if (empty($data['pay_pwd'])) {
            $this->error('交易密码必填');
        }

        $user = $this->s_user->search(['mobile' => $data['mobile']]);
        if (!empty($user)) {
            $this->error('会员已存在');
        }

        $data['salt'] = $this->public->getRandStr(10);
        $data['clear_text'] = $data['passwd'];
        $data['passwd'] = md5($data['passwd'] . $data['salt']);
        $data['pay_pwd'] = md5($data['pay_pwd'] . $data['salt']);

        return true;
    }


    //冻结会员
    public function freezeAction()
    {
        $uid = $this->getValue('uid', false, 'int');
        $user = $this->service->search($uid);

        if (!empty($user)) {
            $this->cache->remove($this->cache->get('ssid_' . $uid));
            $this->service->update($uid, ['status' => 'N']);
        }

        $this->success();
    }

    //删除用户
    public function removeAction()
    {
        $uid = $this->getValue('uid', false, 'int');
        $user = $this->service->search($uid);

        // var_dump($user);die;
        if (!empty($user)) {

            $this->service->update($uid, ['is_delete' => 1,'mobile' => 'DE'  .$user['mobile']]);
        }

        $this->success();
    }

//    public function setMoneyAction()
//    {
//        $id = $this->getValue('id', true, 'int');
//        $money = $this->getValue('money', true, 'float');
//        $type = $this->getValue('type', true) ?: 0;
//        $remark = $this->getValue('remark', false, 'string');
//
//        if ($this->s_user->setMoney($id, $money, $type, 'money', $remark)) {
//            $this->success();
//        }
//
//        $this->error($this->message->getSerMsg());
//    }

    public function setMoneyAction()
    {
        $id = $this->getValue('id', true, 'int');
        $money = $this->getValue('num', true, 'float');
        $type = $this->getValue('type', true, 'string');
        $stype = $this->getValue('stype', true, 'string');
        $title = $this->getValue('title', true, 'string');
        //临时修改 
        if($this->s_user->setMoney($id, $money, $type, $stype, $title)){
            $this->success();
        }

        $this->error($this->message->getSerMsg());
    }

    public function setPrizeAction()
    {
        $id = $this->getValue('id', true, 'int');
        $num = $this->getValue('num', true, 'int');
        $type = $this->getValue('type', true) ?: 0;
        $remark = $this->getValue('remark', false, 'string');

        if ($this->s_user->setMoney($id, $num, $type, 'prize_num', $remark)) {
            $this->success();
        }

        $this->error($this->message->getSerMsg());
    }

    public function setAnwserAction()
    {
        $id = $this->getValue('id', true, 'int');
        $num = $this->getValue('num', true, 'int');
        $type = $this->getValue('type', true) ?: 0;
        $remark = $this->getValue('remark', false, 'string');

        if ($this->s_user->setMoney($id, $num, $type, 'anwser_num', $remark)) {
            $this->success();
        }

        $this->error($this->message->getSerMsg());
    }
}


