<?php

namespace Item;

use C\L\AdmController;

class AprController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_iam;

        $this->pubSearchKeys = [
            'status', 'type', 'cid'
        ];

        $this->keyworkSearchKeys = [
            'uid'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'ok_time', 'back_time'
        ];
    }

    protected function beforeSearch()
    {
        //$this->params['order'] = 'sort desc';
        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $user = $this->s_user->search($item['uid']);
            $item['name'] = $user['name'];
            $item['mobile'] = $user['mobile'];
            $il = $this->s_il->search($item['cid']);
            $item['item_name'] = $il['name'];
        }

        $data['sum_money'] = $this->service->getSum('money', $this->params['data'], $this->params['data_type']);
        $data['sum_apr_money'] = $this->service->getSum('apr_money', $this->params['data'], $this->params['data_type']);
        return true;
    }
}


