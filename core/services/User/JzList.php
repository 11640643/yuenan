<?php

namespace C\S\User;

use C\L\Service;

class JzList extends Service
{
    protected function setModel()
    {
        $this->model = new \C\M\UserJzList();
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'D' => $this->translate['authing'],//'审核中',
                'Y' => $this->translate['auth_success'],
                'N' => $this->translate['auth_err'],
            ],
        ];
    }

    public function verify($id, $status)
    {
        try {

            $info = $this->search($id);
            if (empty($info) || $info['status'] != 'D') {
                throw new \Exception($this->translate['order_add_error']);
            }

            $update = [
                'status' => $status
            ];

            $this->di['db']->begin();

            if ($status == 'Y') {

                if (!$this->di['s_funds']->add($info['uid'], $info['money'], 'manure', 'image_share', "分享截图", $info['id'])) {
                    throw new \Exception($this->translate['funds_add_error']);
                }
            }

            if (!$this->update($id, $update)) {
                throw new \Exception($this->translate['update_err']);
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
