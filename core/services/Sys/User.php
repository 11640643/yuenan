<?php

namespace C\S\Sys;

use C\L\Service;

class User extends Service
{

    protected function setModel()
    {
        $this->model = new \C\M\SysUser();
    }


    // public function login($username, $password, $sf_code, $vf_code)
    public function login($username, $password)
    {

        try {

            $user = $this->search(
                [
                    'username' => $username
                ]
            );
            
            if(md5($password)!=$user['password']){
                throw new \Exception('密码错误');
            }
            
            $this->di['ssid']->set('uid', $user['id']);
            $this->di['ssid']->set('username', $user['username']);

            // 验证两个码
            // $code1 = $this->di['s_sfcode']->checkSfcode($sf_code);
            // $code2 = $this->di['s_sfcode']->updateCodeStatus($vf_code);
            // if (!$code1 || !$code2) {
            //     throw new \Exception('验证码有误');
            // }

            if (!$this->update($user['id'], ['last_login_time' => time()])) {
                throw new \Exception('登录失败');
            }

            // 操作日志记录
            $this->di['s_login_adm']->setRecord($user);

            return true;

        } catch (\Exception $e) {

            $this->di['message']->setSerMsg($e->getMessage());
            return false;
        }

    }



}
