<?php

namespace C\S\Pack;

use C\L\Service;

class PackList extends Service
{

    protected function setModel()
    {
        $this->model = new \C\M\PackList();
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'S' => $this->translate['not_post'],
                'D' => $this->translate['has_post'],
                'C' => $this->translate['caling'],
                'Y' => $this->translate['has_jiesuan'],
                'N' => $this->translate['has_unable'],
                'X' => $this->translate['notgetline']
                // 'S' => '未达标',
                // 'D' => '已达标',
                // 'C' => '已达标',
                // 'Y' => '已结算',
                // 'N' => '未达标',
                // 'X' => '未达标'
            ],
        ];
    }

}
