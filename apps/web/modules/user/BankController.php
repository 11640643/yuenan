<?php

namespace User;

use C\L\WebUserController;

class BankController extends WebUserController
{
    protected function init()
    {
        $this->hideKeys = [
            'is_delete', 'uid'
        ];
        $this->service = $this->s_bank;

    }

    public function beforeSearch()
    {
        $this->params['data']['uid'] = $this->uid;
        $this->params['page_num'] = 500;
        return true;
    }

    public function afterSearch(&$data)
    {
        $config = $this->s_bank->getStatusConfig();
        foreach ($data['list'] as &$item) {
            $item['card'] = $this->s_bank->getBankStar($item['card']);
        }
        $data['config'] = $config;
        return true;
    }

    //设置默认银行卡
    public function setdefAction()
    {
        $uid = $this->uid;
        $id = $this->getValue('id', true);
        $bank = $this->s_bank->search($id);
        if(empty($bank) || $bank['uid'] != $uid){
            $this->success();
        }

        if( $this->s_bank->setDefault($uid, $id)){
            $this->success();
        }

        $this->error();
    }

    //添加银行卡
    public function addAction()
    {
        $uid = $this->uid;
        $name = $this->getValue('name', true);
        $bankname = $this->getValue('banekname', true);
        $card = $this->getValue('card', true);

//        $banks = $this->s_bank->getStatusConfig()['code'];
//        if(empty($banks[$name])){
//            $this->error('当前银行不存在');
//        }

        if($this->s_bank->search(['card' => $card])) {
            $this->error($this->translate['has_in']);
        }

        if (!preg_match("/^\d*$/", $card)) {
            $this->error($this->translate['card_must_num']);
        }

        $add = [
            'uid' => $uid,
            'card' => $card,
            'code' => 'none',
            'name' => $name,
            'bankname' => $bankname,
        ];
        


        if($this->s_bank->save($add)){
            $this->success();
        }

        $this->error($this->translate['add_error']);
    }
}


