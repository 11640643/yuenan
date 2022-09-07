<?php

namespace Goods;

use C\L\AdmController;

class CatController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_gcat;

        $this->likeSearchKeys = [
            'name'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime',
        ];

        $this->createKeys = [
            'name','name_en','name_yn'
        ];

        $this->updateKeys = [
            'name','name_en','name_yn'
        ];
    }

}


