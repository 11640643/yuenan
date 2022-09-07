<?php

namespace Fin;

use C\L\AdmController;

class CostController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_cost;

        $this->keyworkSearchKeys = [
            'uid',
        ];
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime'
        ];

//        $this->updateKeys = [
//            'status'
//        ];

        $this->pubSearchKeys = [
            'status'
        ];
    }


    protected function afterSearch(&$data)
    {
        $data['config'] = $this->s_cost->getStatusConfig();
        foreach ($data['list'] as &$item) {
            $user = $this->s_user->search($item['uid']);
            $item['name'] = $user['name'];
            $item['mobile'] = $user['mobile'];
            $item['remark'] = isset($user['remark'])?$user['remark']:'';
            if (empty($item['bank_name']) && empty($item['bank_card'])) {
                if ($bank = $this->s_bank->search($item['bank_id'])) {
                    $item['bank_name'] = $bank['bankname'];
                    $item['bank_card'] = $bank['card'];
                }
            }
            $item['invest_money'] = $this->s_invest->getSum('money', ['uid' => $item['uid'], 'status' => 'Y']);
            $item['cost_money'] = $this->s_cost->getSum('money', ['uid' => $item['uid'], 'status' => 'Y']);
        }

        $this->params['data']['status'] = 'Y';
        $data['sum_ok_money'] = $this->s_cost->getSum('money', $this->params['data'], $this->params['data_type']);
        $this->params['data']['status'] = 'N';
        $data['sum_no_money'] = $this->s_cost->getSum('money', $this->params['data'], $this->params['data_type']);
        $this->params['data']['status'] = ['S', 'D'];
        $this->params['data_type']['status'] = 'in';
        $data['sum_on_money'] = $this->s_cost->getSum('money', $this->params['data'], $this->params['data_type']);
        return true;
    }

    public function verifyAction()
    {
        $status = $this->getValue('status', true, 'string');
        $id = $this->getValue('id', true, 'int');
	$fail_tips = $this->getValue('fail_tips',false,'string');
        if($this->s_cost->verify($id, $status,$fail_tips)){
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


