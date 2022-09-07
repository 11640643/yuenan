<?php

namespace C\S\Clo;

use C\L\Service;

class CloList extends Service
{

    protected function setModel()
    {
        $this->model = new \C\M\CloList();
    }


    //用户签到
    public function clo($uid, $cloId, $money)
    {
        try {

            $clo = $this->di['s_clo']->get([
                'id' => $cloId
            ]);

            $minMoney = 1;
            if ($money < $minMoney) {
                throw new \Exception($this->translate['min_money'] . $minMoney);
            }

            $maxMoney = 2;
            if ($money > $maxMoney) {
                throw new \Exception($this->translate['max_money'] . $maxMoney);
            }

            if (empty($clo)) {
                throw new \Exception($this->translate['act_notin']);
            }

            if($this->get(['uid' => $uid, 'clo_id' => $cloId])){
                throw new \Exception($this->translate['apply_once']);
            }

            //第二道防
            $key = 'clo_' . date('Ymd') . '_' . $uid;
            if ($this->di['cache']->get($key)) {
                throw new \Exception($this->translate['apply_once']);
            }
            $this->di['cache']->set($key, true, 24 * 3600);

            $add = [
                'clo_id' => $cloId,
                'uid' => $uid,
                'money' => $money,
                'date' => time(),
            ];
            if (!$this->save($add)) {
                throw new \Exception($this->translate['add_err']);
            }

            return true;

        } catch (\Exception $e) {

            $this->di['message']->setSerMsg($e->getMessage());
            return false;
        }
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'S' => $this->translate['not_sign'],
                'D' => $this->translate['has_sign'],
                'N' => $this->translate['notgetline'],
                'C' => $this->translate['caling'],
                'Y' => $this->translate['has_jiesuan'],
                'X' => $this->translate['notgetline']
            ],
        ];
    }
}
