<?php

namespace C\S\User;

use C\L\Service;

class Address extends Service
{
    public function getStatusConfig()
    {
        return [
            'tags' => [
                $this->translate['home'],
                $this->translate['conmpany'],
                $this->translate['school'],
            ]
        ];
    }

    protected function setModel()
    {
        $this->model = new \C\M\UserAddress();
    }

}
