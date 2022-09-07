<?php

namespace User;

use C\L\WebUserController;

class CostController extends WebUserController
{

    protected function init()
    {
        $this->service = $this->s_cost;

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'ok_time'
        ];

        $this->pubSearchKeys = [
            'month'
        ];
    }


    //我的余额提现页面
    public function indexAction()
    {
        $this->checkSetPayPwd();
        $bank = $this->s_bank->getDefault($this->uid);
        if (!empty($bank)) {
            $bank['card'] = $this->s_bank->getBankStar($bank['card']);
        }
        $data = [
            'bank' => $bank,
            'money' => $this->s_user->getValue('money', ['uid' => $this->uid]),
        ];
        $this->success($data);
    }

    //提现
    public function applyAction()
    {
        $money = $this->getValue('money', true);
        $passwd = $this->getValue('passwd', true, 'string');
        $bankId = $this->getValue('bank_id', true, 'int');
        $this->checkAuth();
        $this->checkInvest();
     
        if ($this->s_cost->cash($this->uid, $money, $bankId, $passwd)) {
            $this->success($this->translate['invest_success']);
        }

        $this->error($this->message->getSerMsg());
    }

    protected function checkInvest(){
        $sql = '';
        $money = $this->s_il->getSum('money', ['uid' => 2]);
        if ($money >0 ){
            return true;
        }else{
            $this->error( 'cần tiến hành một lần đầu tư có hiệu quả' , 405);
        }
    }
    protected function beforeSearch()
    {
        $this->params['data']['uid'] = $this->uid;
        $this->params['page_num'] = 500;
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
        return true;
    }

    public function searchAction()
    {
        if (empty($this->service)) {
            $this->error();
        }

        $this->params = [
            'data' => [],
            'data_type' => [],
            'columns' => [],
            'order' => '',
        ];

        if (empty($this->params['page_curren'])) {
            $this->params['page_curren'] = $this->getValue('page_curren', false, 'int') ?: 1;
        }
        if (empty($this->params['page_num'])) {
            $this->params['page_num'] = $this->getValue('page_num', false, 'int') ?: 10;
        }

        $this->setSearchParams();

        if (!$this->beforeSearch()) {
            $this->error($this->translate['request_error']);
        }

        $data = empty($this->params['data']) ? [] : $this->params['data'];
        $dataType = empty($this->params['data_type']) ? [] : $this->params['data_type'];
        $columns = empty($this->params['columns']) ? [] : $this->params['columns'];
        $order = empty($this->params['order']) ? '' : $this->params['order'];
        
        $list = $this->service->searchPage($data, $dataType, $columns, $order, $this->params['page_curren'], $this->params['page_num']);
        $this->setHide($list);
        $this->setShow($list);
        $this->setStatusName($list);
        $this->setCategoryName($list);
        $this->autoTimeToDate($list);
        
        
        // echo '<pre/>';
        // print_r($list);
        // exit();
        $data = [
            'list' => $list,
            'count' => $this->service->getCount($data, $dataType),
            'page_num' => $this->params['page_num'],
            'page_curren' => $this->params['page_curren'],
        ];

        $data['config'] = $this->service->getStatusConfig();
        
 
        if (!$this->afterSearch($data)) {
            $this->error($this->translate['request_error']);
        }

        $this->success($data);
    }
}


