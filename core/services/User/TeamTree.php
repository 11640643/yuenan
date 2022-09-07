<?php

namespace C\S\User;

use C\L\Service;

class TeamTree extends Service
{
    protected function setModel()
    {
        $this->model = new \C\M\UserTeamTree();
        $this->members = [];
    }

    public function addTeamTree($uid,$tUid)
    {
        $userinfo = $this->di['s_user']->search($uid);
        //写入直属记录
        $addTeamData['uid'] = $uid;
        $addTeamData['t_uid'] = $tUid;
        $addTeamData['username'] =  $userinfo['mobile'];
        $addTeamData['team_level'] = 1;
        $this->di['s_teamtree']->save($addTeamData);
        //往上追溯最多四级
        for ($i=2; $i<6; $i++){
            $uid = $tUid;
            $user = $this->di['s_user']->search($uid);
            if($user['t_uid'] != 0){
                $tUid = $user['t_uid'];
                $addTeamData['t_uid'] = $user['t_uid'];
                $addTeamData['username'] =  $userinfo['mobile'];
                $addTeamData['team_level'] = $i;
                $this->di['s_teamtree']->save($addTeamData);
            }
        }

        return true;
    }
    public function gatAllTeamMembersCount($uid)
    {
        //$uid,当前用户
        $members = $this->getPresentChildren($uid);
        $count = count($members);
        return $count;
    }
    public function gatAllTeamMembers($uid)
    {
        //$uid,当前用户
        $members = $this->di['s_teamtree']->searchAll(['t_uid'=>$uid]);
        $data['list'] = $members;
        $data['count'] = count($members);
        foreach($members as $val){
            $data['all_money'] += $val['all_money'];
        }
        return $data;
    }
    public function gatTodayTeamMembers($uid)
    {
        $start_time = strtotime(date('Y-m-d').'00:00:00');
        //$uid,当前用户
        $members = $this->di['s_teamtree']->searchAll(['t_uid' => $uid,'addtime'=>$start_time],['addtime' => '>=']);
        // $data['list'] = $members;
        // $data['count'] = count($members);
        // foreach($members as $val){
        //     $data['all_money'] += $val['all_money'];
        // }
        return  count($members);
    }
    public function getPresentChildren($uid){
        // $list_child = $this->getPresentChildren($v['uid']);
        //直属下级：一节
        $list = $this->di['s_teamtree']->searchAll(['t_uid'=>$uid]);
        $this->members = array_merge($this->members,$list);
        // if($list){
        //     foreach($list as $v){
        //         //二级
        //         $list_2 = $this->di['s_teamtree']->searchAll(['t_uid'=>$v['uid']]);
        //         $this->members = array_merge($this->members,$list_2);
        //         if($list_2){
        //             foreach($list_2 as $v_2){
        //                 //三级
        //                 $list_3 = $this->di['s_teamtree']->searchAll(['t_uid'=>$v_2['uid']]);
        //                 $this->members = array_merge($this->members,$list_3);
        //                 if($list_3){
        //                     foreach($list_3 as $v_3){
        //                         //四级
        //                         $list_4 = $this->di['s_teamtree']->searchAll(['t_uid'=>$v_3['uid']]);
        //                         $this->members = array_merge($this->members,$list_4);
        //                         if($list_4){
        //                             foreach($list_4 as $v_4){
        //                                 //五级
        //                                 $list_5 = $this->di['s_teamtree']->searchAll(['t_uid'=>$v_4['uid']]);
        //                                 $this->members = array_merge($this->members,$list_5);
        //                             }
        //                         }
        //                     }
        //                 }
        //             }
        //         }
                
        //     }
        // }
        return $this->members;
    }

    public function getAllTeamList($uid)
    {
        $data['t_uid'] = $uid;
        $data['all_money'] = 0;
        $data['team_level'] = 1;
        $data_type['all_money'] = '>';
        return $this->di['s_teamtree']->searchAll($data, $data_type);
    }
    
    public function getAllTeamAprList($uid){
        $data['t_uid'] = $uid;
        $data['team_apr_money'] = 0;
        $data_type['team_apr_money'] = '>';
        $list = $this->di['s_teamapr']->searchAll($data, $data_type);
        foreach ($list as &$v){
            $user = $this->di['s_user']->search($v['uid']);
            $v['username'] = $user['mobile'];
        }
        return $list;
    }

    public function calTeamTree($uid,$item_data,$cid)
    {
        $teamlevel = array(
            '5' => 'five_apr',
            '4' => 'four_apr',
            '3' => 'three_apr',
            '2' => 'two_apr',
            '1' => 'one_apr',
        );
        //Step1:计算返佣
        $list = $this->di['s_teamtree']->searchAll(['uid'=>$uid]);
        foreach($list as $val){
            //查询当前用户的等级，根据最新的等级来算返佣
            $user_tmp = $this->di['s_user']->search($val['t_uid']);
            $teaminfo = $this->di['s_team']->search($user_tmp['team_id']);
            if($user_tmp['team_id'] < 5){
                $next_teaminfo = $this->di['s_team']->search($user_tmp['team_id']+1);
            }else{
                $next_teaminfo = $this->di['s_team']->search(5);
            }
            
            if($teaminfo){
                //计算返佣金额
                $aprmoney = $item_data['money']*$teaminfo[$teamlevel[$val['team_level']]]/100;
                //写入投资团队分佣记录
                $addTeamData = $item_data;
                $addTeamData['il_id'] = $cid;
                $addTeamData['t_uid'] = $val['t_uid'];
                $addTeamData['team_apr'] = $teaminfo[$teamlevel[$val['team_level']]];//当前分佣比例
                $addTeamData['team_apr_money'] =$aprmoney;//当前分佣金额
                $res = $this->di['s_teamapr']->save($addTeamData);
                if($aprmoney > 0){
                    $this->di['s_funds']->add($val['t_uid'], $aprmoney, 'money', 'team_apr_money', "Đầu tư:{$item_data['name']}", $cid, 'Y', $user_tmp['money'], $user_tmp['money'] + $aprmoney);
                }
                //加入上级用户余额
                $update['money'] = $user_tmp['money'] + $aprmoney;
                $res1 = $this->di['s_user']->update($val['t_uid'], $update);
                //更新当前表记录返佣总金额
                $update_teamtree['sum_money'] = $val['sum_money'] + $aprmoney;
                $update_teamtree['all_money'] = $val['all_money'] + $item_data['money'];
                $this->di['s_teamtree']->update($val['id'], $update_teamtree);
                //如果已经是最高级，就不用升级了
                if($user_tmp['team_id'] < 5){
                    
                    //看看上级用户是否达到升级标准，如果达到了，需要修改等级
                    $children = $this->di['s_user']->searchAll(['t_uid' => $val['t_uid']]);
                    $count = 0;
                    foreach($children as $v){//这里要注意，对比的是下一级，不是当前这一级别
                        //计算直属团队是否都达到指定人数的总投资
                        $sumMoney = bcadd($this->di['s_il']->getSum('money', ['uid' => $v['uid']]), 0, 2);
                        if($sumMoney > $next_teaminfo['per_money'] || $sumMoney == $next_teaminfo['per_money']){
                            $count += 1;
                        }
                    }
                    //判断是否达到有效邀请人数。
                    if($count == $next_teaminfo['num']){
                        //达到人数，直接升级
                        $update_team['team_id'] = $next_teaminfo['id'];
                        
                        $this->di['s_user']->update($val['t_uid'], $update_team);
                    }
                }
            }else{
                //新用户是没有等级的，所以要特殊处理
                //计算返佣金额
                $teaminfo = $this->di['s_team']->search(1);
                $aprmoney = $item_data['money']*$teaminfo[$teamlevel[$val['team_level']]]/100;
                //写入投资团队分佣记录
                $addTeamData = $item_data;
                $addTeamData['il_id'] = $cid;
                $addTeamData['t_uid'] = $val['t_uid'];
                $addTeamData['team_apr'] = $teaminfo[$teamlevel[$val['team_level']]];//当前分佣比例
                $addTeamData['team_apr_money'] =$aprmoney;//当前分佣金额
                $res = $this->di['s_teamapr']->save($addTeamData);
                if($aprmoney > 0){
                    $this->di['s_funds']->add($val['t_uid'], $aprmoney, 'money', 'team_apr_money', "Đầu tư:{$item_data['name']}", $cid, 'Y', $user_tmp['money'], $user_tmp['money'] + $aprmoney);
                }
                //加入上级用户余额
                $update['money'] = $user_tmp['money'] + $aprmoney;
                $res1 = $this->di['s_user']->update($val['t_uid'], $update);
                //更新当前表记录返佣总金额
                $update_teamtree['sum_money'] = $val['sum_money'] + $aprmoney;
                $update_teamtree['all_money'] = $val['all_money'] + $item_data['money'];
                $this->di['s_teamtree']->update($val['id'], $update_teamtree);

                //看看上级用户是否达到升级标准，如果达到了，需要修改等级
                $children = $this->di['s_user']->searchAll(['t_uid' => $val['t_uid']]);
                $count = 0;
                foreach($children as $v){
                    //计算直属团队是否都达到制定人数的总投资
                    $sumMoney = bcadd($this->di['s_il']->getSum('money', ['uid' => $v['uid']]), 0, 2);
                    if($sumMoney >= $teaminfo['per_money']){
                        $count += 1;
                    }
                }
                //判断是否达到有效邀请人数。
                if($count == $teaminfo['num']){
                    //达到人数，直接升级
                    $update_team['team_id'] = 1;
                    $this->di['s_user']->update($val['t_uid'], $update_team);
                }
            }
            
        }
        return true;
    }
}
