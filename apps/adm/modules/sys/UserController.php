<?php

namespace Sys;

use C\L\AdmController;

class UserController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_sysuser;
        $this->hideKeys = [
            'password'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'last_login_time'
        ];
    }

    //系统用户信息
    public function infoAction()
    {
        $user = $this->s_sysuser->search($this->uid, false, ['id', 'username', 'last_login_time']);
        $user['last_login_time_date'] = date('Y-m-d H:i:s', $user['last_login_time']);
        $this->success($user);
    }

    public function resetpwdAction()
    {
        $passwd = $this->getValue('passwd', true);
        $npasswd = $this->getValue('npasswd', true);

        $user = $this->s_sysuser->search();
        if($user['password'] != md5($passwd)){
            $this->error($this->translate['oldpwerr']);
        }

        if($user['password'] == md5($npasswd)){
            $this->error($this->translate['notmatch']);
        }

        if($this->s_sysuser->update($user['id'], ['password' => md5($npasswd)])){
            $this->ssid->destory();
            $this->success();
        }

        $this->error();

    }

}


