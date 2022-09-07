<?php

namespace User;

use C\L\AdmController;

class JzController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_jz;
        $this->hideKeys = [
            'is_delete'
        ];

        $this->updateKeys = [
            'name', 'thumb', 'sort', 'status', 'image', 'money'
        ];

        $this->createKeys = [
            'name', 'thumb', 'sort', 'status', 'image', 'money'
        ];
    }

}


