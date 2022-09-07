<?php

namespace User;

use C\L\AdmController;

class TeamController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_team;
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'addtime', 'uptime'
        ];

        $this->updateKeys = [
            'name', 'num', 'per_money','five_apr','content','four_apr','three_apr','two_apr','one_apr'
        ];

        $this->createKeys = [
            'name', 'num', 'per_money','five_apr','content','four_apr','three_apr','two_apr','one_apr'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['order'] = 'num asc';
        return true;
    }

}


