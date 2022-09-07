<?php

namespace Fin;

use C\L\AdmController;

class PackController extends AdmController
{
    public function applyAction()
    {
        $name = $this->getValue('name', true, 'string');
        $money = $this->getValue('money', true, 'float');
        $vip = $this->getValue('vip', true, 'string');

        if ($this->s_funds->applyPack($name, $vip, $money)) {
            $this->success();
        }

        $this->error();
    }

    public function userApplyAction()
    {
        $name = $this->getValue('name', true, 'string');
        $money = $this->getValue('money', true, 'float');
        $uid = $this->getValue('uid', true, 'int');

        if ($this->s_funds->applyUserPack($name, $uid, $money)) {
            $this->success();
        }

        $this->error();
    }
}


