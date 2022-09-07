<?php

namespace User;

use C\L\AdmController;

class TopController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_user;
        $this->hideKeys = [
            'password', 'salt', 'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'freeze_login_time', 'last_login_time'
        ];
    }

    protected function beforeSearch()
    {
        $keywordSearchValue = $this->getValue('keyword_search_value', false, 'string');
        if (!empty($keywordSearchValue)) {
            $user = $this->s_user->search(['mobile' => $keywordSearchValue]);
            $type = $this->getValue('search_type');
            if($type == 1){

                if (!empty($user)) {
                    $this->params['data']['uid'] = $user['t_uid'];
                }else{
                    $this->params['data']['uid'] = -1;
                }

            }else{
                if (!empty($user)) {
                    $this->params['data']['t_uid'] = $user['uid'];
                }else{
                    $this->params['data']['t_uid'] = -1;
                }
            }

        }

        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$value) {
            $other = [
                'top_mobile' => $this->s_user->getTopMobile($value['t_uid']), //推荐人手机号
                'ds_money' => 0
            ];
            $value = array_merge($value, $other);
        }
        return true;
    }

}


