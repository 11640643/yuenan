<?php

namespace Fin;

use C\L\AdmController;

class FundsController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_funds;

        $this->keyworkSearchKeys = [
            'uid',
        ];
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime'
        ];

        $this->updateKeys = [
            'status'
        ];

        $this->pubSearchKeys = [
            'type','stype'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['order'] = $this->getValue('order', false, 'string');
        return true;
    }

    protected function afterSearch(&$data)
    {
        $data['config'] = $this->s_funds->getStatusConfig();
        $data['config']['vip'] = $this->s_level->searchAll();
        foreach($data['list'] as &$item){
            $user = $this->s_user->search($item['uid']);
            if(!empty($user)){
                $item['name'] = $user['name'];
                $item['mobile'] = $user['mobile'];
            }else{
                $item['name'] = '用户不存在';
                $item['mobile'] = '';
            }
        }
        
        $this->params['data']['btype'] = 'add';
        $data['sum_add_money'] = $this->s_funds->getSum('money', $this->params['data'], $this->params['data_type']);
        $this->params['data']['btype'] = 'sub';
        $data['sum_sub_money'] = $this->s_funds->getSum('money', $this->params['data'], $this->params['data_type']);
        return true;
    }
    // protected function afterUpdate(&$data)
    // {
    //     //其实这里有个逻辑漏洞，用户需要在update的时候，更新当前的流水记录
    //     $info = $this->s_funds->search($data['id']);
    //     if($info['status'] == "Y"){
    //         $userinfo =  $this->s_user->search($info['uid']);
    //         $userinfo[$info['type']] = $userinfo[$info['type']] + $info['money'];
    //         //更新用户数据
    //         $update = [
    //             $info['type'] => $userinfo[$info['type']]
    //         ];
    //         $this->s_user->update($info['uid'],$update);
    //     }
    //     return true;
    // }
}


