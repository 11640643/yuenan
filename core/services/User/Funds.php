<?php

namespace C\S\User;

use C\L\Service;

class Funds extends Service
{
    protected function setModel()
    {
        $this->model = new \C\M\UserFunds();
    }

    public function add($uid, $money, $type, $stype, $title, $cid, $status = 'D', $beforMoney = 0, $afterMoney = 0, $remark = '')
    {
        $add = [
            'cid' => $cid,
            'uid' => $uid,
            'money' => $money,
            'type' => $type,
            'stype' => $stype,
            'title' => $title,
            'status' => $status,
            'befor_money' => $beforMoney,
            'after_money' => $afterMoney,
            'btype' => $money < 0 ? 'sub' : 'add',
            'remark' => $remark
        ];

        return $this->save($add);
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'D' => $this->translate['for_deal'],
                'S' => $this->translate['dealing'],
                'Y' => $this->translate['deal_seccess']//'处理成功'
            ],
            'type' => [
                'money' => $this->translate['cash'],
                'credit' => $this->translate['credit'],
                'prize_num' => $this->translate['prize_num'],
                'exchange_credit' => $this->translate['exchange_credit'],
                // 'manure' => '肥料',
                // 'water' => '浇水',
                // 'fruit' => '果实',
//                'anwser_num' => '答题',
            ],
            'stype' => [
                'bank_invest_back' => $this->translate['bank_incoe_apr'],
                'back_money' => $this->translate['full_back'],
                'pack_send' => $this->translate['pack_send'],
                'prize_money' => $this->translate['prize_money'],
                'prize_num_sub' => $this->translate['prize_num_sub'],
                'prize_num_add_item' => $this->translate['prize_num_add_item'],
                'sys_prize_num' => $this->translate['sys_prize_num'],
                'sys_money' => $this->translate['sys_money'],
                'sys_anwser_num' => $this->translate['sys_anwser_num'],
                'item_pack' => $this->translate['item_pack'],
                'item_credit' => $this->translate['item_credit'],
                'itemdq_apr' => $this->translate['itemdq_apr'],
                'itemdq_money' => $this->translate['itemdq_money'],
                'invest_wx' => $this->translate['invest_wx'],
                'invest_alipay' => $this->translate['invest_alipay'],
                'invest_bank' => $this->translate['invest_bank'],
                'cost' => $this->translate['outmoney'],
                'invest_credit' => $this->translate['invest_credit'],
                'itemdq_apply' => $this->translate['itemdq_apply'],//'项目投资',
                'cost_back' => $this->translate['outerrback'],
                'share_money' => $this->translate['share_money'],
                'reg_money' => $this->translate['reg_money'],
                'huzhuan_out' => $this->translate['huzhuan_out'],
                'huzhuan_in' => $this->translate['huzhuan_in'],
                'checkin' => $this->translate['sign_awards'],
                'reward_invest' => $this->translate['reward_invest'],
                'reward_item' =>$this->translate['reward_item'],
                'reward_item_f' => $this->translate['reward_item_f'],
                'apply_item' => $this->translate['apply_item'],
                // 'manure_apply' => '浇水',
                // 'water_apply' => '施肥',
                // 'tree_pluck' => '果实采摘',
                'goods_apply' => $this->translate['goods_apply'],
                'clo' => $this->translate['clo'],
                'pack' => $this->translate['pack'],
                // 'yeb' => '余额宝任务',
                // 'clos' => '持续早起任务',
                'auth' => $this->translate['auth'],
                'task_item' => $this->translate['task_item'],
                // 'pack_step' => '达3000步任务',
                'pack_apply' => $this->translate['pack_apply'],
                'pack_back' => $this->translate['pack_back'],
                'clo_apply' => $this->translate['clo_apply'],
                'clo_back' => $this->translate['clo_back'],
                // 'login_manure' => '每日赠送肥料',
                // 'login_water' => '每日赠送浇水',
                'cumulative_sign' => $this->translate['cumulative_sign'],
//                'anwser' => '答题奖励',
//                'anwser_num_sub' => '参与答题',
            ],
        ];
    }

    public function applyPack($name, $vip, $money)
    {
        try {

            if (empty($name)) {
                throw new \Exception($this->translate['name_must']);
            }

            if ($money < 0.01) {
                throw new \Exception($this->translate['money_min']);
            }

            $vipConfig = $this->di['s_level']->search($vip);
            if (empty($vipConfig)) {
                throw new \Exception($this->translate['not_vip_set']);
            }

            $data = [];
            $scores = $this->di['s_level']->getNextLevelScore($vip);
            if ($scores[1] > 0) {
                $scores[1] -= 1;
                $data['data']['credit'] = $scores;
                $data['data_type']['credit'] = 'between';
            } else {
                $data['data']['credit'] = $scores[0];
                $data['data_type']['credit'] = '>=';
            }

            if (empty($data)) {
                throw new \Exception($this->translate['add_error']);
            }

            $users = $this->di['s_user']->searchAll($data['data'], $data['data_type'], ['uid', 'credit']);
            if (empty($users)) {
                throw new \Exception($this->translate['no_user']);
            }

            $adds = [];
            $time = time();
            foreach ($users as $user) {
                $adds[] = [
                    'cid' => $user['uid'],
                    'uid' => $user['uid'],
                    'money' => $money,
                    'type' => 'money',
                    'stype' => 'pack_send',
                    'title' => $name,
                    'status' => 'D',
                    'uptime' => $time,
                    'addtime' => $time,
                ];
            }

            if (!$this->saves($adds)) {
                throw new \Exception($this->translate['add_error']);
            }

            return true;

        } catch (\Exception $e) {

            $this->di['message']->setSerMsg($e->getMessage());
            return false;
        }
    }

}
