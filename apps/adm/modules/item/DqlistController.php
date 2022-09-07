<?php

namespace Item;

use C\L\AdmController;

class DqlistController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_il;
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'end_time',
        ];

        $this->likeSearchKeys = [
            'name'
        ];

        $this->keyworkSearchKeys = [
            'uid'
        ];

        $this->pubSearchKeys = [
            'status', 'type'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['data']['stype'] = 'dq';
        return true;
    }

    public function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $user = $this->s_user->search($item['uid']);
            $item['name'] = $user['name'];
            $item['mobile'] = $user['mobile'];
            $dq = $this->s_item->search($item['cid']);
            $item['item_name'] = $dq['name'];
            $item['back_money'] = bcadd($item['money'], $this->s_iam->getSum('apr_money', ['cid' => $item['id']]));

            $item['next_apr_no'] = $item['next_apr_date'] = '已结束';
            $nextAprData = $this->s_iam->search(['cid' => $item['id'], 'status' => 'D'], [], [], 'id asc');
            if (!empty($nextAprData)) {
                $item['next_apr_date'] = date('Y-m-d H:i:s', $nextAprData['back_time']);
                $item['next_apr_no'] = $nextAprData['apr_no'];
            }
        }

        $this->params['data']['status'] = 'Y';
        $data['sum_ok_money'] = $this->service->getSum('money', $this->params['data'], $this->params['data_type']);
        $this->params['data']['status'] = 'D';
        $data['sum_on_money'] = $this->service->getSum('money', $this->params['data'], $this->params['data_type']);
        return true;
    }

    public function resetAction()
    {
        $id = $this->getValue('id', true, 'int');
        if ($this->s_il->reset($id)) {
            $this->success();
        }
        $this->error();
    }

}


