<?php

namespace C\S\Item;

use C\L\Service;

class ItemList extends Service
{

    protected function setModel()
    {
        $this->model = new \C\M\ItemList();
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'D' => $this->translate['stationing'],
                'Y' => $this->translate['finish_has'],
            ],
            'is_auto_apply' => [
                'N' => $this->translate['liantou_open'],
                'Y' => $this->translate['liantou_close'],
            ],
            'type' => [
		        'A' => $this->translate['item_type_a'],
                'B' => $this->translate['item_type_b'],
                'C' => $this->translate['item_type_c'],
                'D' => $this->translate['item_type_d'],
                'E' => $this->translate['item_type_e'],
                'p1' => $this->translate['item_type_e'],
                'p2' => $this->translate['item_type_e'],
                'p3' => $this->translate['item_type_e'],
                'p4' => $this->translate['item_type_e'],
                'p5' => $this->translate['item_type_e'],
                'p6' => $this->translate['item_type_e'],
            ],
            'stype' => [
                'dq' => $this->translate['short_item'],
                'dt' => $this->translate['normail_item']
            ]
        ];
    }

    public function dqapply($uid, $money, $itemId, $passwd, $vouchers_money=0)
    {
        try {
           $this->di['db']->begin();
            $lockKey = "uid:$uid:itemdq";
            if (!$this->di['s_user']->lock($lockKey, 5)) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['serve_busy']);
            }

            if (!$this->di['s_user']->checkPayPwd($uid, $passwd)) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['pw_error']);
            }
            $item = $this->di['s_item']->search(['id' => $itemId, 'status' => 'Y']);
            if (empty($item)) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['item_close']);
            }
            $vouchers_money =  $vouchers_money==0?$vouchers_money:$item['vouchers_money'];
            $itemList  = $this->di['s_il']->search(['cid'=>$itemId,'uid'=>$uid, 'vouchers_money' => 0], ['vouchers_money' => '>']);
            if(($itemList && abs(intval($itemList['vouchers_money']))>0) || $item['if_open_vouchers']=='N'){
                $vouchers_money = 0;
            }
	    $curren_buy_count = $this->di['s_il']->getCount(['cid'=>$itemId]);
            $item['rem_count'] =  $item['rem_count'] >0 ? $item['rem_count']-$curren_buy_count:0;
            if ($item['rem_count']==0) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['item_sale']);
            }
            if ($money < $item['min_money'] || $money > $item['max_money']) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['item_money_re'].":{$item['min_money']}-{$item['max_money']}");
            }

            if ($this->getCount(['uid' => $uid, 'cid' => $item['id']]) >= $item['max_count']) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['max_item']);
            }

            $level = $this->di['s_level']->getLevel($uid);
            $maxCount = $this->getAprCount($item['type'], $item['days']);

            $addData = [
                'uid' => $uid,
                'money' => $money-$vouchers_money,
                'vouchers_money' => $vouchers_money,
                'cid' => $itemId,
                'type' => $item['type'],
                'apr' => $item['apr'],
                'level_apr' => $level['apr'],
                'days' => $item['days'],
                'end_time' => time() + $item['days'] * 24 * 3600,
                'name' => $item['name'],
                'max_apr_count' => $maxCount,
                'pack' => $item['pack'],
                'top_apr' => $item['top_apr'],
            ];

            $sumApr = bcadd($item['apr'], $level['apr'], 2);

     
            // 计算流水金额，也就是实际扣除金额
            if ($vouchers_money) {
                $real_buckle_money = bcadd($money, -$vouchers_money, 2);
            } else {
                $real_buckle_money = $money;
            }
            
            $numArray = $this->di['s_user']->lockUpdate($uid, -$real_buckle_money, 'money');
            if ($numArray === false) {
                $this->di['db']->rollback();
                throw new \Exception($this->di['message']->getSerMsg());
            }

            if (!$cid = $this->save($addData)) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['post_err']);
            }

            if (!$this->di['s_funds']->add($uid, -$real_buckle_money, 'money', 'itemdq_apply', "Đầu tư:{$item['name']}", $cid, 'Y', $numArray[0], $numArray[1])) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['add_fund_err']);
            }

            if ($item['pack'] > 0 && $money > 0 && $item['pack_max_num'] > 0) {

                $maxPackNum = intval($money / $item['pack_money']);
                if ($maxPackNum > $item['pack_max_num']) {
                    $maxPackNum = $item['pack_max_num'];
                }
                $packMoney = bcmul($maxPackNum, $item['pack'], 2);
                if (!$this->di['s_funds']->add($uid, $packMoney, 'money', 'item_pack', $this->translate['post_hongbao'], $cid)) {
                    $this->di['db']->rollback();
                    throw new Exception($this->translate['add_fund_err'].':1002');
                }

            }

            $aprAddData = [];
            $backTime = 0;
            $dMoney = $money;

            $time = time();
            for ($i = 0; $i < $maxCount; $i++) {
                $aprMoney = $this->getAprMoney($item['type'], $dMoney, $sumApr, $item['days']);
                $backTime = $this->getNextAprTime($item['type'], $item['days'], $backTime);
                $aprAddData[] = [
                    'uid' => $uid,
                    'money' => $i + 1 == $maxCount ? $money : 0,
                    'apr_money' => $aprMoney,
                    'back_time' => $backTime,
                    'apr_no' => $i + 1,
                    'cid' => $cid,
                    'type' => $item['type'],
                    'apr' => $item['apr'],
                    'stype' => 'dq',
                    'uptime' => $time,
                    'addtime' => $time,
                ];
            }

            if (!$this->di['s_iam']->saves($aprAddData)) {
                $this->di['db']->rollback();
                throw new \Exception($this->translate['post_err'].':1002');
            }

            if ($item['money'] > 0) {

                $schedule = bcadd($item['schedule'], $money / $item['money'], 4);
                if ($schedule > 100) {
                    $schedule = 100;
                }

                if (!$this->di['s_item']->update($item['id'], ['schedule' => $schedule])) {
                    $this->di['db']->rollback();
                    throw new \Exception($this->translate['update_item_err']);
                }
            }

            if ($item['prize_num'] > 0) {
                if (!$this->di['s_funds']->add($uid, $item['prize_num'], 'prize_num', 'prize_num_add_item', 'Đầu tư tặng lượt quay', $cid)) {
                    $this->di['db']->rollback();
                    throw new \Exception($this->translate['choujiang_err']);
                }
            }

            $reward = $this->di['s_config']->get('reward');
            if ($reward['item_credit'] > 0) {
                $credit = bcmul($money / 100, $reward['item_credit'], 2);
                if (!$this->di['s_funds']->add($uid, $credit, 'credit', 'item_credit', 'Đầu tư tặng lượt quay', $cid)) {
                    $this->di['db']->rollback();
                    throw new \Exception($this->translate['user_jifen_err']);
                }
            }
            if ($reward['exchange_credit'] > 0) {
                $exchange_credit = bcmul($money / 100, $reward['exchange_credit'], 2);
                if (!$this->di['s_funds']->add($uid, $exchange_credit , 'exchange_credit', 'exchange_credit', 'Đầu tư tặng lượt quay', $cid)) {
                    $this->di['db']->rollback();
                    throw new \Exception($this->translate['user_jifen_err']);
                }
            }
            // $this->di['cache']->rPush('sms_list', json_encode([
            //     'uid' => $uid,
            //     'type' => 'item_apply',
            //     'params' => $item['name']
            // ]));
            
            $this->di['db']->commit();
            //计算团队返佣
            $this->di['s_teamtree']->calTeamTree($uid,$addData,$cid);
            $this->di['cache']->rPush('item_reward', $cid);
            return $cid;

        } catch (\Exception $e) {

            if ($this->di['db']->isUnderTransaction()) {
                $this->di['db']->rollback();
            }

            $this->di['message']->setSerMsg($e->getMessage());
            return false;
        }
    }

    public function cal($money, $apr, $type, $days)
    {
        $aprMaxCount = $this->getAprCount($type, $days);

        $data = [];
        $backTime = 0;
        $sumAprMoney = 0;
        for ($i = 0; $i < $aprMaxCount; $i++) {

            $aprMoney = $this->getAprMoney($type, $money, $apr, $days);
            $backTime = $this->getNextAprTime($type, $days, $backTime);

            $amoney = $i + 1 == $aprMaxCount ? $money : 0;
            $data[] = [
                'money' => $amoney,
                'apr_money' => $aprMoney,
                'back_time' => $backTime,
                'apr_no' => $i + 1,
                'sy_money' => $i + 1 == $aprMaxCount ? 0 : $money,
                'smoney' => $amoney + $aprMoney,
                'date' => date('m-d', $backTime)
            ];

            $sumAprMoney = bcadd($sumAprMoney, $aprMoney, 2);
        }

        return ['list' => $data, 'sum' => [
            'money' => $money, 'apr_money' => $sumAprMoney, 'smoney' => $money + $sumAprMoney
        ]];
    }

    public function getNextAprTime($type, $days, $time = 0)
    {
        if ($time == 0) {
            $time = time();
        }

        if ($type == 'A') {
            return $time + 24 * 3600;
        }

        if ($type == 'B') {
            return $time + 7 * 24 * 3600;
        }

        if ($type == 'C') {
            return $time + 30 * 24 * 3600;
        }

        if ($type == 'E' || $type == 'D') {
            return $time + $days * 24 * 3600;
        }

        return 0;
    }

    public function getAprCount($type, $days)
    {

        if ($type == 'A') {
            return $days;
        }

        if ($type == 'B') {
            return intval($days / 7);
        }

        if ($type == 'C') {
            return intval($days / 30);
        }

        if ($type == 'E' || $type == 'D') {
            return 1;
        }

        return 0;
    }

    public function getAprMoney($type, $money, $apr, $days)
    {
        bcscale(2);

        if ($type == 'A') {
            return bcmul($money / 100, $apr);
        }

        if ($type == 'B') {
            return bcmul($money * 7 / 100, $apr);
        }

        if ($type == 'C') {
            return bcmul($money * 30 / 100, $apr);
        }

        if ($type == 'D') {

            $aprMoney = 0;
            for ($i = 0; $i < $days; $i++) {
                $aprMoney = bcadd($aprMoney, ($money + $aprMoney) * $apr / 100);
            }

            return $aprMoney;
        }

        if ($type == 'E') {
            return bcmul($money * $days / 100, $apr);
        }

        return 0;
    }

    public function reset($id)
    {
        try {

            $il = $this->search($id);
            if (empty($il) || $il['status'] != 'D') {
                throw new \Exception($this->translate['order_not_action']);
            }

            $this->di['db']->begin();

            if (!$this->update($id, ['status' => 'Y', 'is_auto_apply' => 'N', 'is_delete' => 1])) {
                throw new \Exception($this->translate['action_order_err']);
            }

            if (!$this->di['s_iam']->updates(['status' => 'Y', 'is_delete' => 1], ['cid' => $id, 'status' => 'D'])) {
                throw new \Exception($this->translate['act_apr_err']);
            }

            $this->di['db']->commit();

            return true;

        } catch (\Exception $e) {

            if ($this->di['db']->isUnderTransaction()) {
                $this->di['db']->rollback();
            }

            $this->di['message']->setSerMsg($e->getMessage());
            return false;
        }
    }

}
