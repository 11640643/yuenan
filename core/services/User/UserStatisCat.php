<?php

namespace C\S\User;

use C\L\Service;

class UserStatisCat extends Service
{
    protected function setModel()
    {
        $this->model = new \C\M\UserStatisCat();
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'D' => $this->translate['status_d_statis'],
                'S' => $this->translate['status_s_statis'],
                'Y' => $this->translate['status_y_statis']
            ],
            'type' => [
                'ip' => $this->translate['ip'],
                'tj_a1' => $this->translate['tj_a1'],
                'tj_b1' => $this->translate['tj_b1'],
                'verify_a' => $this->translate['verify_a'],
                'verify_b' => $this->translate['verify_b'],
                'invest_a' => $this->translate['invest_a'],
                'money_a' => $this->translate['money_a'],
                'item_a' => $this->translate['item_a']
            ]
        ];
    }


    public function getNextUserNum($uid, $teration = false)
    {
        $users = $this->di['s_user']->searchAll(['t_uid' => $uid, 'status' => 'Y'], [], ['uid']);
        if (empty($users)) {
            return [];
        }

        $uids = array_column($users, 'uid');

        if ($teration) {
            foreach ($uids as $uid) {
                $uids = array_merge($uids, $this->getNextUserNum($uid, $teration));
            }
        }

        return $uids;
    }

    public function getIps()
    {
        $sql = "select reg_ip from user where status = 'Y' and reg_ip > '' group by reg_ip";
        return $this->di['db']->query($sql)->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function apply()
    {
        try {

            if($this->search(['status' => 'D'])){
                throw new \Exception($this->translate['has_any']);
            }

            $time = time();
            $types = $this->getStatusConfig()['type'];

            $this->di['db']->begin();

            foreach ($types as $k => $type) {
                if (!$this->save(['type' => $k, 'time' => $time])) {
                    throw new \Exception($this->translate['fail']);
                }
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
