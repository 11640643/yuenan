<?php

namespace User;

use C\L\WebUserController;

class FundsController extends WebUserController
{
    protected function init()
    {
        $this->service = $this->s_funds;

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime'
        ];

        $this->pubSearchKeys = [
            'type', 'stype', 'month'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['data']['status'] = 'Y';
        $this->params['data']['uid'] = $this->uid;
        $type = $this->getValue('type', false, 'string');
        $this->params['data']['type'] = $type ?? 'money';
        $this->params['page_num'] = 10000;
        if (isset($this->params['data']['stype']) && $this->params['data']['stype'] == 'checkin') {
            $this->params['data']['stype'] = ['checkin', 'cumulative_sign'];
            $this->params['data_type']['stype'] = 'in';
        }
        if (isset($this->params['data']['month'])) {
            $month = $this->params['data']['month'];
            list($year, $month) = explode('-', $month);
            unset($this->params['data']['month']);
            $t = cal_days_in_month(CAL_GREGORIAN, $month, $year);
            $stime = mktime(0, 0, 0, $month, 1, $year);
            $etime = mktime(23, 59, 59, $month, $t, $year);
            $this->params['data']['addtime'] = [$stime, $etime];
            $this->params['data_type']['addtime'] = 'between';
        }
        return true;
    }

    protected function afterSearch(&$data)
    {

        #系统充值title显示
        foreach($data['list'] as $key=>$val){
            $data['list'][$key]['stype_name'] = $val['stype'] =='sys_money' ? $val['remark']:$val['stype_name'];
        }

        $uid = $this->uid;
        $data['value'] = $type = $this->getValue('type') == 'money' ? $this->s_user->getValue('money', $uid) : $this->s_user->getValue('credit', $uid);
        
        return true;
    }

}


