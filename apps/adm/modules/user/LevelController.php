<?php

namespace User;

use C\L\AdmController;

class LevelController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_level;
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'addtime', 'uptime'
        ];

        $this->updateKeys = [
            'name', 'credit', 'apr'
        ];

        $this->createKeys = [
            'name', 'credit', 'apr'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['order'] = 'credit asc';
        return true;
    }

}


