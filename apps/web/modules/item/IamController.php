<?php

namespace Item;

use C\L\WebUserController;

class IamController extends WebUserController
{
    protected function init()
    {
        $this->service = $this->s_iam;

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'addtime', 'uptime', 'back_time'
        ];
        $this->pubSearchKeys = [
            'month'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['page_num'] = 500;
        $this->params['data']['uid'] = $this->uid;
        if (isset($this->params['data']['month'])) {
            $month = $this->params['data']['month'];
            list($year, $month) = explode('-', $month);
            unset($this->params['data']['month']);
            $t = cal_days_in_month(CAL_GREGORIAN, $month, $year);
            $stime = mktime(0, 0, 0, $month, 1, $year);
            $etime = mktime(23, 59, 59, $month, $t, $year);
            $this->params['data']['back_time'] = [$stime, $etime];
            $this->params['data_type']['back_time'] = 'between';
        }
        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $il = $this->s_il->search($item['cid']);
            $item['item_name'] = isset($il['name']) ? $il['name'] : '';
            $item['back_time_date'] = isset($item['back_time']) ? date('Y-m-d H:i:s', $item['back_time']) : '';
        }
        return true;
    }

}


