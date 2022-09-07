<?php

namespace Record;

use C\L\AdmController;

class LoginController extends AdmController
{
    protected function init()
    {
        
        $this->service = $this->s_login_adm;

        $this->likeSearchKeys = [
            'name'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime',
        ];

        $this->createKeys = [
            'name', 'ip', 'area', 'mobile'
        ];

        $this->updateKeys = [
            'name', 'ip', 'area', 'mobile'
        ];
    }

    // protected function afterSearch(&$data)
    // {
    //     return true;
    // }

    public function testAction()
    {
        var_dump($this->uid);
        die(0);
        $user = $this->di['s_user']->get($this->uid);
        $this->di['s_login']->setRecord($user);
        var_dump(33333);
        die(0);
    }
}


