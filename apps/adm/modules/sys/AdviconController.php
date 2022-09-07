<?php

namespace Sys;

use C\L\AdmController;

class AdviconController extends AdmController
{
    protected $statusMap = [
        1 => '上架',
        2 => '下架'
    ];

    protected function init()
    {
        $this->service = $this->s_advicon;

        $this->likeSearchKeys = [
            'name', 'status'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime',
        ];

        $this->createKeys = [
            'name', 'icon', 'jump_url', 'condition', 'status'
        ];

        $this->updateKeys = [
            'name', 'icon', 'jump_url', 'condition', 'status'
        ];
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as $key => &$value) {
            $value['status_name'] = isset($this->statusMap[$value['status']]) ? $this->statusMap[$value['status']] : '';
        }
        return true;
    }
}
