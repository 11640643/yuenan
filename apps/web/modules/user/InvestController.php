<?php

namespace User;

use C\L\WebUserController;

class InvestController extends WebUserController
{

    protected function init()
    {
        $this->service = $this->s_invest;

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'ok_time'
        ];

        $this->pubSearchKeys = [
            'type', 'stype', 'month'
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
            $this->params['data']['addtime'] = [$stime, $etime];
            $this->params['data_type']['addtime'] = 'between';
        }
        return true;
    }

    //渠道
    public function channelAction()
    {

        $this->checkAuth();
        $pay = $this->s_config->get('pay');
        $data = [];

        if ($pay['777payzalo_is_open'] == 'Y') {
            $data[] = [
                'key' => 'zalo',
                'name' => 'Zalo pay',            // Ví điện tử
                'is_default' => 'Y',
            ];
        }

        if ($pay['777paymomo_is_open'] == 'Y') {
            $data[] = [
                'key' => 'momo',
                'name' => 'Momo pay',            // Ví điện tử
                'is_default' => 'Y',
            ];
        }

        if ($pay['wx_is_open'] == 'Y') {
            $data[] = [
                'key' => 'wx',
                'name' => $this->translate['wx'],
                'is_default' => 'Y',
            ];
        }

        if ($pay['bank_is_open'] == 'Y') {
            $data[] = [
                'key' => 'bank',
                'name' => 'Chuyển khoản ngân hàng',
                'is_default' => 'N',
                'bank_back_apr' => $pay['bank_back_apr'],
                'bank_is_back' => $pay['bank_is_back']
            ];
        }


        if ($pay['alipay_is_open'] == 'Y') {
            $data[] = [
                'key' => 'alipay',
                'name' => $this->translate['alipay'],
                'is_default' => 'N',
            ];
        }

        $this->success([
            'invest_min_money' => $this->s_config->get('pay')['invest_min_money'],
            'config' => $data,
            'money' => $this->s_user->getValue('money', ['uid' => $this->uid]),
        ]);
    }

    //充值
    public function applyAction()
    {
        $money = $this->getValue('money', true, 'float');
        $channel = $this->getValue('channel', true);
        $pay_account = $this->getValue('pay_account', true);

        $pay = $this->s_config->get('pay');
        if ($pay['invest_min_money'] > 0 && $money < $pay['invest_min_money']) {
            $this->error($this->translate['min_income'] . $pay['invest_min_money']);
        }

        if (!in_array($channel, ['wx', 'alipay', 'bank'])) {
            //$this->error('充值渠道不存在');
            $channel = 'wx';
        }

        $image = '';
        $content = '';
        $payConfig = $this->s_config->get('pay');
        if (in_array($channel, ['wx', 'alipay'])) {
            $image = BASE_URL . '/' . $payConfig[$channel . '_code'] . '?rand=' . mt_rand(1000, 9999);
            $content = $payConfig[$channel . '_content'];
        }

        $data = [
            'channel' => $channel,
            'title' => $this->translate['scane_pay'],
            'image' => $image,
            'content' => $content,
            'pay_account' => $pay_account,
        ];

        $add = [
            'uid' => $this->uid,
            'channel' => $channel,
            'money' => $money,
            'name' => $this->ssid->get('name'),
            'pay_account' => $pay_account,
        ];
        if (!$this->s_invest->save($add)) {
            $this->error($this->translate['income_err']);
        }

        $this->success($data);
    }

    public function getInvateInfoAction()
    {
        $money = $this->getValue('money', true, 'float');
        $channel = $this->getValue('channel', true);
        $pay = $this->s_config->get('pay');
        if ($pay['invest_min_money'] > 0 && $money < $pay['invest_min_money']) {
            $this->error($this->translate['min_income'] . $pay['invest_min_money']);
        }
        if (!in_array($channel, ['wx', 'alipay', 'bank'])) {
            //$this->error('充值渠道不存在');
            $channel = 'wx';
        }
        $image = '';
        $content = '';
        $payConfig = $this->s_config->get('pay');
        if (in_array($channel, ['wx', 'alipay'])) {
            $image = BASE_URL . '/' . $payConfig[$channel . '_code'] . '?rand=' . mt_rand(1000, 9999);
            $content = $payConfig[$channel . '_content'];
        }
        $data = [
            'channel' => $channel,
            'title' => $this->translate['scane_pay'],
            'image' => $image,
            'content' => $content,
        ];
        $this->success($data);
    }

    //银行转账
    public function bankAction()
    {
        $pay = $this->s_config->get('pay');
        $public = $this->s_config->get('public');
        $this->success([
            'bank_card' => $pay['bank_card'],
            'bank_user' => $pay['bank_user'],
            'bank_name' => $pay['bank_name'],
            'account' => $public['bank_account'] ?? '',
        ]);
    }

    public function applybAction()
    {
        $name = $this->getValue('name', true, 'string');
        $remark = $this->getValue('remark', true, 'string');
        $money = $this->getValue('money', true, 'float');

        $pay = $this->s_config->get('pay');
        if ($pay['invest_min_money'] > 0 && $money < $pay['invest_min_money']) {
            $this->error($this->translate['min_income'] . $pay['invest_min_money']);
        }

        if(strlen($name) > 100){
            $this->error($this->translate['max_name']);
        }

        $add = [
            'uid' => $this->uid,
            'channel' => 'bank',
            'money' => $money,
            'name' => $name,
            'remark' => $remark
        ];

        if(!$this->s_invest->save($add)){
            $this->error();
        }

        $this->success();
    }

}


