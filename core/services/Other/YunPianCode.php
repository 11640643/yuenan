<?php

namespace C\S\Other;

use C\L\Service;
use C\P\ChuangLan;
use C\P\YunPian;
class Code extends Service
{

    private $errorMsg;

    protected function setModel()
    {
        $this->model = new \C\M\Code();
    }


    private function checkMsgType($type)
    {
        $config = $this->di['config']->get('code');
        if (empty($config->$type)) {
            return false;
        }

        return true;
    }

    public function verify($mobile, $code, $type)
    {
        try {

            if (!$this->checkMsgType($type)) {
                throw new \Exception('非法的型验证码类型');
            }

            $data = $this->search(
                [
                    'mobile' => $mobile,
                    'type' => $type,
                    'status' => 'S',
                    'code' => $code,
                ]
            );

            if (empty($data) || $data['expire_time'] < time()) {
                throw new \Exception('验证码有误');
            }

            if (!$this->update($data['id'], ['status' => 'Y'])) {
                throw new \Exception('code修改失败');
            }

            return true;

        } catch (\Exception $e) {

            $this->di['message']->setCodeMsg($e->getMessage());
            return false;
        }
    }

    public function checkCode($mobile, $type)
    {
        try {

            if (!$this->di['public']->checkMobile($mobile)) {
                throw new \Exception('手机号有误');
            }

            if (!$this->checkMsgType($type)) {
                throw new \Exception('非法的型验证码类型');
            }

            $method = $type . 'Check';
            if (!$this->$method($mobile) || !$this->checkSendNum($mobile, $type, 6)) {
                throw new \Exception($this->errorMsg);
            }

            return true;

        } catch (\Exception $e) {

            $this->di['message']->setSerMsg($e->getMessage());
            return false;

        }
    }

    public function send($mobile, $type, $params = '')
    {
        try {

            $config = $this->di['s_config']->get('sms_cl');
            $expireTime = 0;
  //          $code = '';
//	    var_dump($config);exit;
          /*  $username = $config['username2'];
            $password = $config['password2'];
            if (in_array($type, ['register', 'forgetpwd'])) {
                if (!$this->checkCode($mobile, $type)) {
                    throw new \Exception($this->di['message']->getSerMsg());
                }

                $username = $config['username1'];
                $password = $config['password1'];
                $code = rand(111111, 999999);
                $params = $code;
                $expireTime = $this->di['config']->get('code')->$type['expire_time'] + time();
            }

            if (empty($config[$type])) {
                throw new \Exception('未找到模板');
            }

            $logSer = $this->di['log']->set('code_cl_' . date('Ymd') . '.log');
            $cl = new ChuangLan($logSer, $username, $password);
		
            if (!$cl->send($mobile, $config[$type], $params)) {
                throw new \Exception('短信发送失败');
            }
	    $key  = $config['username1']; 
	    */
            $key  = $config['username1'];
	    //var_dump($type);exit;
	    $code = date("Y-m-d H:i:s");
            if (in_array($type, ['register', 'forgetpwd'])) {
                if (!$this->checkCode($mobile, $type)) {
                    throw new \Exception($this->di['message']->getSerMsg());
                }
                $code = rand(111111, 999999);
                $strArray = [$code];
                $expireTime = $this->di['config']->get('code')->$type['expire_time'] + time();
            }else{
		$key = $config['username2'];
	    }

            if (empty($config[$type])) {
                throw new \Exception('未找到模板');
            }
	    $message = str_replace('{$var}',$code,$config[$type]);			
	    $logSer = $this->di['log']->set('code_yp_' . date('Ymd') . '.log');
	    $yp = new YunPian($logSer, $key);
            if (!$yp->send($mobile, $message)) {
                throw new \Exception('短信发送失败');
            }	

            $add = [
                'mobile' => $mobile,
                'type' => $type,
                'expire_time' => $expireTime,
                'code' => $code,
                'message' => "{$config[$type]}|{$code}"
            ];
	    //var_dump($add);
            if (!$this->save($add)) {
                throw new \Exception('发送失败');
            }

            return true;

        } catch (\Exception $e) {
	    echo  $e->getMessage();	
            $this->di['message']->setSerMsg($e->getMessage());
            return false;
        }
    }

    public function checkSendNum($mobile, $type)
    {

        try {

            $config = $this->di['config']->get('code');
            //$key = 'send_code_' . $mobile;
            //$lastCdSendTime = $this->di['cache']->get($key);
            $todayTime = strtotime(date('Ymd'));
//        if (!$lastCdSendTime) {
//            $lastCdSendTime = time();
//            //$this->di['cache']->set($key, $time, $config->$type['sms_cd_time']);
//        }
            $sendNum = $this->getCount(
                [
                    'mobile' => $mobile,
                    'type' => $type,
                    'addtime' => $todayTime
                ],
                [
                    'addtime' => '>'
                ]
            );

            $lastCode = $this->search($mobile, 'mobile');

            if ($config->$type['send_num'] <= $sendNum) {
                throw new \Exception('今日发送已超过限制，请明日再试');
            }

            if (!empty($lastCode) && time() - $lastCode['addtime'] <= $config->$type['sms_cd_time']) {
                throw new \Exception('发送太频繁请稍后');
            }

            return true;

        } catch (\Exception $e) {
            $this->errorMsg = $e->getMessage();
        }

    }

    private function registerCheck($mobile)
    {
//        if ($this->di['s_user']->checkUserExist($mobile)) {
//            $this->errorMsg = '该手机号已注册';
//            return false;
//        }

        return true;
    }

    private function forgetpwdCheck($mobile)
    {
        return true;
    }

}
