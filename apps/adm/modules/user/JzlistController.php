<?php

namespace User;

use C\L\AdmController;

class JzlistController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_jzlist;
        $this->hideKeys = [
            'is_delete'
        ];

        $this->keyworkSearchKeys = [
            'uid'
        ];

        $this->pubSearchKeys = [
            'status'
        ];

        $this->updateKeys = [
            'name', 'thumb', 'sort', 'status', 'image'
        ];

        $this->createKeys = [
            'name', 'thumb', 'sort', 'status', 'image'
        ];
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $user = $this->s_user->search($item['uid']);
            $item['name'] = $user['name'];
            $item['mobile'] = $user['mobile'];
            $jz = $jz = $this->s_jz->search($item['cid']);
            if($jz){
                $item['channel'] = $jz['name'];
            }
        }
        return true;
    }

    public function verifyAction()
    {
        $id = $this->getValue('id', true, 'int');
        $status = $this->getValue('status', true, 'string');
        if($this->s_jzlist->verify($id, $status)){
            $this->success();
        }

        $this->error();
    }

}


