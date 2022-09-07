<?php

namespace Clo;

use C\L\WebUserController;

class InfoController extends WebUserController
{
    protected function init()
    {
        $this->service = $this->s_clolist;
        $this->showKeys = [
            'id', 'money', 'addtime', 'no_date', 'status', 'max_dk_time'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['data']['uid'] = $this->uid;
        $status = $this->getValue('status');
        if ($status == 'A') {
            $this->params['data']['status'] = ['S', 'D', 'C'];
            $this->params['data_type']['status'] = 'in';
        }

        if ($status == 'B') {
            $this->params['data']['status'] = ['Y', 'N'];
            $this->params['data_type']['status'] = 'in';
        }
        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $item['sdate'] = date('Y-m-d h:i', $item['addtime']);
            $item['edate'] = date('Y-m-d H:i', $item['max_dk_time']);
        }
        return true;
    }

    //status S:未打卡|D:已打卡|C:结算中|Y:已结算|N:已失效
    public function indexAction()
    {
        $uid = $this->uid;
        $todayTime = strtotime(date('Ymd'));
        $tomorrowTime = $todayTime + 24 * 3600;
        $todayClo = $this->s_clo->search(['no_date' => date('Ymd', $todayTime)]);
        if (!$todayClo) {
            $this->error($this->translate['task_end']);
        }
        $tomorrowClo = $this->s_clo->search(['no_date' => date('Ymd', $tomorrowTime)]);
        $weekArray = [$this->translate['week_0'], $this->translate['week_1'], $this->translate['week_2'], $this->translate['week_3'], $this->translate['week_4'], $this->translate['week_5'], $this->translate['week_6']];
        $time = time();
        $data = [
            'money' => $this->s_user->getValue('money', $this->uid), //余额
            'tomorrow_dk_title' => $this->translate['tomorrow'] . date('m-d H:i', $tomorrowClo['min_dk_time']) . '-' . date('H:i', $tomorrowClo['max_dk_time']) . '打卡', //明日打卡标题
            'tomorrow_dk_date' => $this->translate['sign_time'] . date('Y年m月d日 H:i', $tomorrowClo['min_dk_time']) . '-' . date('H:i', $tomorrowClo['max_dk_time']),
            'tomorrow_dk_no' => date('md', $tomorrowTime), //明日打卡期数
            'tomorrow_bm_all_money' => $tomorrowClo['set_all_money'] + $this->s_clolist->getSum('money', ['no_date' => date('Ymd', $tomorrowTime)]), //明日总金额
            'tomorrow_bm_usr_num' => $tomorrowClo['set_user_num'] + $this->s_clolist->getCount(['no_date' => date('Ymd', $tomorrowTime)]), //明日报名人数
            'tomorrow_show_status' => empty($this->s_clolist->search(['uid' => $uid, 'no_date' => date('Ymd', $tomorrowTime)])) ? 'Y' : 'N', //Y可以报名，N不可报名
            'tomorrow_begin_time' => $tomorrowClo['min_dk_time'],
            'show_page_status' => 'X', //X:显示明日报名页面，S:显示今日打卡页面，Y:显示打卡成功，N：显示打卡失败，C:显示明天开赛页面
            'user_dk_num' => $this->s_clolist->getCount(['uid' => $uid, 'status' => ['D', 'C', 'Y']], ['status' => 'in']), //用户打卡次数
            'today_dk_date' => date('H:i', $todayClo['min_dk_time']) . '-' . date('H:i', $todayClo['max_dk_time']), //今日打卡时间区间
            'today_dk_ok_hour' => '', //今日打卡时间
            'today_week' => $this->translate['week'] . $weekArray[date('w')], //显示：今日周几
            'today_day' => date('d'), //显示：今日日期
            'today_date' => date('Y-m'), //显示：今日月份
            'show_page_notice' => 'S', //弹窗判断 S:未打卡，Y：打卡成功，N：打卡失败
            'today_begin_date' => date('Y/m/d,H:i:s'),
        ];

        $dk = $this->s_clolist->search(['uid' => $uid, 'no_date' => date('Ymd', $todayTime)]);
        if (!empty($dk)) {
            $data['today_dk_date'] = date('H:i', $dk['min_dk_time']) . '-' . date('H:i', $dk['max_dk_time']);
            $data['show_page_status'] = 'S';
            if (in_array($dk['status'], ['D', 'C', 'Y'])) {
                $data['show_page_status'] = 'Y';
                $data['today_dk_ok_hour'] = date('H:i', $dk['ok_time']);
            }

            // if ($time >= $dk['min_dk_time'] && $time <= $dk['max_dk_time'] && $dk['status'] == 'S') {
            //     $data['show_page_status'] = 'Y';
            //     $data['show_page_notice'] = 'Y';
            //     $data['today_dk_ok_hour'] = date('H:i');
            //     $this->s_clolist->update($dk['id'], ['ok_time' => $time, 'status' => 'D']);
            //     $data['user_dk_num'] += 1;
            // }

            if ($time > $dk['max_dk_time'] && $dk['ok_time'] == 0 && $dk['status'] == 'S') {
                $data['show_page_status'] = 'N';
                $data['show_page_notice'] = 'N';
                $this->s_clolist->update($dk['id'], ['status' => 'N']);
            }

            if (in_array($dk['status'], ['N', 'X'])) {
                $data['show_page_status'] = 'N';
            }

        } else {

            if ($this->s_clolist->search(['uid' => $uid, 'no_date' => date('Ymd', $tomorrowTime)])) {
                $data['show_page_status'] = 'C';
            }

        }

        $this->success($data);
    }

    public function bminfoAction()
    {
        $time = strtotime('now +1 day');

        $clo = $this->s_clo->search(['no_date' => date('Ymd', $time)]);
        $userMoney = $this->s_user->getValue('money', $this->uid);
        $data = [
            'money' => $userMoney,
            'no' => date('md', $time),
            'date_day' => date('Y.m.d', $clo['min_dk_time']),
            'date_hour' => date('H:i', $clo['min_dk_time']) . '-' . date('H:i', $clo['max_dk_time']),
            'apply_money' => $clo['min_money'],

            'repay' => [
                [
                    'type' => 'money',
                    'name' => $this->translate['repay_name_pre']."{$userMoney}".$this->translate['repay_name_bak'],
                    'is_default' => 'Y'
                ]
            ]
        ];
        $this->success($data);
    }

    public function applyAction()
    {
        $this->checkAuth();

        if ($this->s_clo->apply($this->uid)) {
            $this->success();
        }

        $this->error();

    }

    public function okAction()
    {
        $time = time();
        $uid = $this->uid;
        $dk = $this->s_clolist->search(['uid' => $uid, 'no_date' => date('Ymd')]);
        // if (empty($dk) || $dk['status'] != 'S') {
        if (empty($dk)) {
            $this->error($this->translate['notgettime']);
        }
        if ($time < $dk['min_dk_time']) {
            $this->error($this->translate['notstarttime']);
        }
        if ($time > $dk['max_dk_time']) {
            $this->error($this->translate['haspasstime']);
        }
        if ($dk['status'] == 'D') {
            $this->error($this->translate['repeatnotallow']);
        }

        $update = [
            'ok_time' => $time,
            'status' => 'D'
        ];
        if ($this->s_clolist->update($dk['id'], $update)) {
            $this->success();
        }
        $this->error();
    }
}


