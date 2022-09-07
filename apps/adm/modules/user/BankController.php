<?php

namespace User;

use C\L\AdmController;

class BankController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_bank;
        $this->hideKeys = [
            'is_delete'
        ];

        $this->keyworkSearchKeys = [
            'uid'
        ];

        $this->updateKeys = [
            'card', 'code', 'name'
        ];

        $this->createKeys = [
            'card', 'code', 'name'
        ];
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $user = $this->s_user->search($item['uid']);
            $item['mobile'] = $user['mobile'];
            $item['uname'] = $user['name'];
        }
        return true;
    }

    protected function beforeCreate(&$data)
    {
        $uid = $this->s_user->getValue('uid', ['mobile' => $this->getValue('mobile', true, 'string')]);
        if(empty($uid)){
            $this->error('用户不存在');
        }

        $data['uid'] = $uid;
        return true;
    }


}


