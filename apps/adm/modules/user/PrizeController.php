<?php

namespace User;

use C\L\AdmController;

class PrizeController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_prize;

        $this->keyworkSearchKeys = [
            'mobile', 'name'
        ];
        $this->hideKeys = [
            'is_delete'
        ];

        $this->updateKeys = [
            'status'
        ];

        $this->pubSearchKeys = [
            'status', 'is_show_index'
        ];

        $this->likeSearchKeys = [
            'jp_name'
        ];

        $this->createKeys = [
            'name', 'mobile', 'jp_name', 'is_show_index', 'status'
        ];

        $this->updateKeys = [
            'name', 'mobile', 'jp_name', 'is_show_index', 'status'
        ];
    }

    public function setShowsAction()
    {
        $ids = $this->getValue('ids', true, 'trim');
        $type = $this->getValue('type', true);
        if (empty($ids)) {
            $this->success();
        }

        if(!in_array($type, ['Y', 'N'])){
            $this->error('未选择类型');
        }

        if ($this->s_prize->updates(['is_show_index' => $type], ['id' => $ids], ['id' => 'in'])) {
            $this->success();
        }

        $this->error();
    }

}


