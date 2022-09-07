<?php

namespace Fin;

use C\L\AdmController;

class InvestController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_invest;

        $this->keyworkSearchKeys = [
            'uid',
        ];
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime'
        ];

        $this->pubSearchKeys = [
            'status', 'channel'
        ];

    }

    public function verifyAction()
    {
        $status = $this->getValue('status', true, 'string');
        $id = $this->getValue('id', true, 'int');
	$fail_tips = $this->getValue('fail_tips',false,'string');
        if($this->s_invest->verify($id, $status,$fail_tips)){
            $this->success();
        }

        $this->error();
    }

    protected function afterSearch(&$data)
    {
        $data['config'] = $this->s_invest->getStatusConfig();
        foreach ($data['list'] as &$item) {
            $user = $this->s_user->search($item['uid']);
            $item['name'] = $user['name'];
            $item['mobile'] = $user['mobile'];
            if ( $item['channel'] == 'zalo' ){ $item['channel_name']= 'zalo pay'; }
            if ( $item['channel'] == 'momo' ){ $item['channel_name']= 'momo pay'; }
        }
        
    
        $this->params['data']['status'] = 'Y';
        $data['sum_ok_money'] = $this->s_invest->getSum('money', $this->params['data'], $this->params['data_type']);
        $this->params['data']['status'] = 'N';
        $data['sum_no_money'] = $this->s_invest->getSum('money', $this->params['data'], $this->params['data_type']);
        $this->params['data']['status'] = ['S', 'D'];
        $this->params['data_type']['status'] = 'in';
        $data['sum_on_money'] = $this->s_invest->getSum('money', $this->params['data'], $this->params['data_type']);
        return true;
    }

    public function cancelsAction()
    {
        $ids = $this->getValue('ids', true);
        if($this->s_invest->updates(['status' => 'C', 'front_status' => 'C'], ['id' => $ids, 'status' => ['S', 'D']], ['id' => 'in', 'status' => 'in'])){
            $this->success();
        }

        $this->error();
    }

    protected function beforeSearch()
    {
        $this->params['page_num'] = 50;
        return true;
    }

}


