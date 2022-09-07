<?php

namespace C\S\Clo;

use C\L\Service;

class Clo extends Service
{

    protected function setModel()
    {
        $this->model = new \C\M\Clo();
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'D' => $this->translate['not_finish'],
                'S' => $this->translate['caling'],
                'Y' => $this->translate['has_jiesuan']
            ],
            'is_disable' => [
                'Y' => $this->translate['hasclosed'],
                'N' => $this->translate['hasopen']
            ]
        ];
    }

    public function apply($uid)
    {
        try {

            $noTime = strtotime('+1 day');
            $noDate = date('Ymd', $noTime);

            $lockKey = "uid:$uid:clo";
            if (!$this->di['s_user']->lock($lockKey, 10)) {
                throw new \Exception($this->translate['act_later']);
            }

            $dk = $this->di['s_clolist']->search(['uid' => $uid, 'no_date' => $noDate]);
            if (!empty($dk)) {
                throw new \Exception($this->translate['has_apply']);
            }

            $clo = $this->search(['no_date' => $noDate]);
            if (empty($clo)) {
                throw new \Exception($this->translate['not_set']);
            }

            $money = $clo['min_money'];

            $this->di['db']->begin();

            $moneyArray = $this->di['s_user']->lockUpdate($uid, -$money, 'money');
            if ($moneyArray === false) {
                throw new \Exception($this->di['message']->getSerMsg());
            }

            $add = [
                'uid' => $uid,
                'min_dk_time' => $clo['min_dk_time'],
                'max_dk_time' => $clo['max_dk_time'],
                'clo_id' => $clo['id'],
                'no_date' => $noDate,
                'apr' => $clo['apr'],
                'money' => $money,
                'not_apr' => $clo['not_apr'],
            ];
            if (!$cid = $this->di['s_clolist']->save($add)) {
                throw new \Exception($this->translate['serve_busy']);
            }

            if (!$this->di['s_funds']->add($uid, -$money, 'money', 'clo_apply', $this->translate['morning_active']."-".date('md', $noTime), $cid, 'Y', $moneyArray[0], $moneyArray[1])) {
                throw new \Exception($this->translate['serve_busy']);
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
