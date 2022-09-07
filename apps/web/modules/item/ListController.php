<?php

namespace Item;

use C\L\WebUserController;

class ListController extends WebUserController
{
    protected function init()
    {
        $this->service = $this->s_il;

        $this->pubSearchKeys = [
            'stype', 'type', 'month'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'addtime', 'uptime', 'end_time'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['page_num'] = 500;
        $this->params['order'] = 'addtime desc';
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

//    protected function afterSearch(&$data)
//    {
//        foreach ($data['list'] as &$item) {
//            $sitem = $this->s_item->search($item['cid']);
//        }
//        return true;
//    }

    protected function afterView(&$data)
    {
        $aprPlanArray = $this->s_iam->searchAll(['cid' => $data['view']['id']], [], [
            'money', 'apr_money', 'back_time', 'apr_no', 'ok_time', 'status'
        ]);
        $this->setTimeToDate($aprPlanArray, ['back_time', 'ok_time']);
        $this->setStatusName($aprPlanArray);

        $data['view'] = array_merge($data['view'], [
            'apr_money' => $this->s_iam->getSum('apr_money', ['cid' => $data['view']['id']]),
            'apr_plan' => $aprPlanArray,
            'end_time_date' => date('Y-m-d', $data['view']['end_time']),
            'addtime_date' => date('Y-m-d', $data['view']['addtime'])
        ]);

        return true;
    }

    public function infoAction()
    {
        $id = $this->getValue('id', true, 'int');
        $item = $this->service->search($id);
        if (empty($item)) {
            $this->error($this->translate['item_empty']);
        }

        $weekArray = [$this->translate['week_0'], $this->translate['week_1'], $this->translate['week_2'], $this->translate['week_3'], $this->translate['week_4'], $this->translate['week_5'], $this->translate['week_6']];
        $aprTime = $this->s_il->getNextAprTime($item['type'], $item['days']);
        $aprDate = date('md', $aprTime) . '（'.$this->translate['week'] . $weekArray[date('w', $aprTime)] . '）';
        $config = $this->s_config->get('item_dq');
        $data = [
            'rule_url' => $config['rule_url'],
            'contract_url' => $config['contract_url'],
            'name' => $item['name'],
            'min_money' => $item['min_money'],
            'user_money' => $this->s_user->getValue('money', ['uid' => $this->uid]),
            'remark' => $this->translate['now_apply_1']."{$aprDate}".$this->translate['now_apply_2']."{$item['days']}".$this->translate['now_apply_3']
        ];

        $this->success($data);
    }

    public function autoApplyAction()
    {
        $id = $this->getValue('id', true, 'int');

        if ($this->service->autoApply($this->uid, $id)) {
            $this->success();
        }

        $this->error();
    }

    public function contractAction()
    {
        $id = $this->getValue('id', true, 'int');
        $il = $this->service->search($id);
        if (empty($il)) {
            $this->error($this->translate['coo_empty']);
        }

        $config = $this->s_config->get('contract_' . $il['stype']);
        $user = $this->s_user->search($il['uid']);
        $data = [
            'title' => $config['title'],
            'name1' => $user['name'],
            'name2' => $config['name2'],
            'name3' => $config['name3'],
            'item_name' => $il['name'],
            'name1_idcard' => $user['idcard'],
            'item_money' => $il['money'],
            'item_days' => $il['days'],
            'item_apr' => bcadd($il['apr'], $il['level_apr'], 2),
            'item_adddate' => date('Y-m-d', $il['addtime']),
            'item_enddate' => date('Y-m-d', $il['end_time']),
            'item_back_money' => bcadd($il['money'], $this->s_iam->getSum('apr_money', ['cid' => $il['id']]), 2),
            'item_type' => $this->service->getStatusConfig()['type'][$il['type']],
            'contract_content' => $config['contract_content'],
            'contract_date' => date('Y年m月d日', $il['addtime']),
            'contract_image1' => $config['contract_image1'],
            'contract_image2' => $config['contract_image2'],
            'contract_no' => date('Ymd', $il['addtime']) . $il['id']
        ];

        $this->success($data);
    }

}


