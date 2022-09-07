<?php

namespace User;

use C\L\AdmController;

class NoticeController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_notice;

        $this->keyworkSearchKeys = [
            'uid'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->updateKeys = [
            'name', 'content', 'type', 'vip_id',
        ];

        $this->createKeys = [
            'name', 'content', 'type', 'vip_id',
        ];
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $item['read_user_num'] = $this->s_noticeread->getCount(['cid' => $item['id']]);
            $item['user_info'] = '';
            if($item['type'] == 'vip'){
                $item['user_info'] = "所有" . $this->s_level->getValue('name', $item['vip_id']) . "用户";
            }
            if($item['type'] == 'user'){
                $user = $this->s_user->search($item['uid']);
                $item['user_info'] = "用户名:{$user['name']}|手机号:{$user['mobile']}";
            }
        }

        return true;
    }

    protected function beforeCreate(&$data)
    {
        $type = $this->getValue('type', false, 'string');
        if ($type == 'user') {
            $mobile = $this->getValue('mobile', false, 'string');
            if (!$user = $this->s_user->search(['mobile' => $mobile])) {
                $this->error('收信用户不存在');
            }
            $data['uid'] = $user['uid'];
        }
        return true;
    }

    protected function beforeUpdate(&$data)
    {
        $type = $this->getValue('type', false, 'string');
        if ($type == 'user') {
            $mobile = $this->getValue('mobile', false, 'string');
            if (!$user = $this->s_user->search(['mobile' => $mobile])) {
                $this->error('收信用户不存在');
            }
            $data['uid'] = $user['uid'];
        }
        return true;
    }

    protected function afterView(&$data)
    {
        if($data['view']['uid'] > 0){
            $data['view']['mobile'] = $this->s_user->getValue('mobile', $data['view']['uid']);
        }
        return true;
    }

}


