<?php

namespace C\S\Item;

use C\L\Service;

class ItemAutoApply extends Service
{

    protected function setModel()
    {
        $this->model = new \C\M\ItemAutoApply();
    }

    public function getStatusConfig()
    {
        return [
            'status' => [
                'Y' => $this->translate['liantou_success'],
                'D' => $this->translate['doing'],
                'N' => $this->translate['liantou_error']
            ],
        ];
    }
}
