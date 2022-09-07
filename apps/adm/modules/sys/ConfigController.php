<?php

namespace Sys;

use C\L\AdmController;

class ConfigController extends AdmController
{

    //获取信息
    public function infoAction()
    {
        $type = $this->getValue('type', true);
        $config = $this->s_config->get($type);
        if (empty($config)) {
            if ($type == 'sign_reward') {
                $config['reward_set'] = [];
                $config['sign_reward_type'] = $this->s_config->getSignTypeConfig()['sign_reward_type'];
                $this->success($config);
            }
            $this->error('未找到相关配置');
        }

        if($type == 'anwser'){
            $config['vips'] = $this->s_level->searchAll([], [], ['name', 'id']);
        }

        if($type == 'item_dq'){
            $config['tree'] = $this->s_config->get('tree')['tree'];
        }
        
        if ($type == 'tree' && isset($config['tree_rule'])) {
            $config['tree_rule'] = json_decode($config['tree_rule']);
        }

        if ($type == 'sign_reward' && isset($config['reward_set'])) {
            $config['reward_set'] = isset($config['reward_set']) ? json_decode($config['reward_set'], true) : [];
            $config['sign_reward_type'] = $this->s_config->getSignTypeConfig()['sign_reward_type'];
        }

        if ($type == 'white_list_manage' && isset($config['white_list'])) {
            $config['white_list'] = json_decode($config['white_list'], true);
        }

        if ($type == 'goods_exchange' && isset($config['ex_rule'])) {
            $config['ex_rule'] = json_decode($config['ex_rule'], true);
        }

        $this->success($config);
    }

    //更新
    public function updateAction()
    {
        $type = $this->getValue('type', true);
        $config = $this->s_config->search(['type' => $type]);
        if (empty($config)) {
            $this->firstTaskNotice($type, []);
            $this->error('未找到相关配置');
        }

        $content = json_decode($config['content'], true);
        foreach ($content as $k => $v) {
            $value = $this->getValue($k);

            if (strstr($k, 'vip') || in_array($k, ['goods_exchange', 'white_list_manage', 'sign_rule', 'reward_set', 'signin_num', 'notice', 'rules', 'tree_rule', 'content', 'banner', 'question', 'remark', 'aprs', 'contract_content', 'prize', 'tree'])) {
                $value = $this->request->getPost($k);
            }

            if($k == 'prize'){

                $num = 0;
                foreach($value as &$p){
                    $p['pro'] = bcadd($p['pro'], 0, 2);
                    $num += $p['pro'];
                }

                if($num != 100){
                    $this->error('总中奖概率要为100%');
                }

            }

            if ($value !== null && $value != '') {
                $content[$k] = $value;
            }
        }

        if($type == 'anwser' && empty($content['no'])){
            $content['no'] = md5(time());
        }
        if ($type == 'tree' && empty($content['tree_rule'])) {
            $content['tree_rule'] = $this->getValue('tree_rule', true);
        }
        if ($type == 'exchange' && empty($content['rules'])) {
            $content['rules'] = $this->getValue('rules', true);
        }
        if ($type == 'tree' && empty($content['notice'])) {
            $content['notice'] = $this->getValue('notice', true);
        }
        if ($type == 'item_dq' && empty($content['signin_num'])) {
            $content['signin_num'] = $this->getValue('signin_num', true);
        }
        if ($type == 'sign_reward' && empty($content['reward_set'])) {
            $content['reward_set'] = $this->getValue('reward_set', true);
        }
        if ($type == 'sign_reward' && empty($content['sign_rule'])) {
            $content['sign_rule'] = $this->getValue('sign_rule', true);
        }
        if ($type == 'white_list_manage' && empty($content['white_list'])) {
            $content['white_list'] = $this->getValue('white_list', true);
        }
        if ($type == 'white_list_manage' && empty($content['security_code'])) {
            $content['security_code'] = $this->getValue('security_code', true);
        }
        if ($type == 'goods_exchange' && empty($content['goods_exchange'])) {
            $content['ex_rule'] = $this->getValue('ex_rule', true);
        }
	    if ($type == 'sign_reward' && empty($content['sign_bg'])) {
            $content['sign_bg'] = $this->getValue('sign_bg', true);
        }
        if($type == 'app_ios' && empty($content['app_ios'])){
            $content['app_ios'] = $this->getValue('app_ios', true);
        }
        if($type == 'app_android' && empty($content['app_android'])){
            $content['app_android'] = $this->getValue('app_android', true);
        }
	/*if ($type == 'reward' && empty($content['auth_reward_type'])) {
            $content['auth_reward_type'] = $this->getValue('auth_reward_type', true);
        }
	if ($type == 'reward' && empty($content['auth_reward_value'])) {
            $content['auth_reward_value'] = $this->getValue('auth_reward_value', true);
        }*/
        if ($this->s_config->update($config['id'], ['content' => json_encode($content)])) {
            $this->success();
        }

        $this->error();

    }

    public function audioAction()
    {
        $data = [
            'invest_sound' => '',
            'cost_sound' => '',
        ];

        $sound = $this->s_config->get('sound');

        if ($this->s_invest->search('S', 'status')) {

            if ($sound['is_open_invest'] == 'Y') {
                $data['invest_sound'] = '/audio/' . $sound['invest_sound'];
            }

        }

        if ($this->s_cost->search('S', 'status')) {


            if ($sound['is_open_cost'] == 'Y') {
                $data['cost_sound'] = '/audio/' . $sound['cost_sound'];
            }
        }


        $this->success($data);
    }

    public function indexAction()
    {
        $ydayTime = strtotime(date('Ymd') . ' -1 day');

        $data = [
            'user_num' => $this->s_user->getCount(), //总会员

            'today_farm_count' => 0, //今日充值次数

            'today_invest_sum' => $this->s_invest->getSum('money', ['addtime' => strtotime(date('Ymd')), 'status' => 'Y'], ['addtime' => '>']), //今日充值
            'today_cost_sum' => $this->s_cost->getSum('money', ['addtime' => strtotime(date('Ymd')), 'status' => 'Y'], ['addtime' => '>']),//今日提现
            'today_reg_num' => $this->s_user->getCount(['addtime' => strtotime(date('Ymd'))], ['addtime' => '>']),//今日注册人数

            'yday_invest_sum' => $this->s_invest->getSum('money', ['addtime' => [$ydayTime, $ydayTime + 24 * 3600 - 1], 'status' => 'Y'], ['addtime' => 'between']),//昨日充值
            'yday_const_sum' => $this->s_cost->getSum('money', ['addtime' => [$ydayTime, $ydayTime + 24 * 3600 - 1], 'status' => 'Y'], ['addtime' => 'between']),//昨日提现
            'yday_reg_num' => $this->s_user->getCount(['addtime' => [$ydayTime, $ydayTime + 24 * 3600 - 1]], ['addtime' => 'between']),//昨日注册
            'today_login_num' => $this->s_funds->getCount(['stype' => 'checkin', 'addtime' => strtotime(date('Ymd'))], ['addtime' => '>']), //今日签到

            //汇总
            'all_invest_sum' => $this->s_invest->getSum('money', ['status' => 'Y']), //总充值
            'all_cost_sum' => $this->s_cost->getSum('money', ['status' => 'Y']), //总提现
        ];

        $this->success($data);
    }

    public function removeAction()
    {
        $url = $this->getValue('url');
        $image = $this->getValue('image');
        $type = $this->getValue('type');
        $bannerConfig = $this->s_config->search($type, 'type');
        if (empty($bannerConfig)) {
            $this->error('未找到相关配置');
        }

        $content = json_decode($bannerConfig['content'], true);

        foreach ($content['banner'] as $k => $item) {
            if ($item['url'] == $url && $item['image'] == $image) {
                unset($content['banner'][$k]);
            }
        }
        $content['banner'] = array_values($content['banner']);

        $this->s_config->update($bannerConfig['id'], ['content' => json_encode($content)]);
        $this->success();
    }

    public function setmaintainAction()
    {
        $status = $this->getValue('status', true, 'string');
        if ($status == 'Y') {

            $this->cache->set('web_is_maintain', 1);
            $this->success([
                'is_maintain' => true
            ]);

        } else {

            $this->cache->set('web_is_maintain', 0);
            $this->success([
                'is_maintain' => false
            ]);
        }
    }

    /**
     * 将连续签到奖励设置同步至Redis
     */
    public function signRewardCache($type, $content)
    {
        if ($type != 'sign_reward') {
            return false;
        }
        $r_key = 'sign:reward:set';
        $this->cache->set($r_key, $content);
    }

    public function firstTaskNotice($type, $content)
    {
        if ($type == 'public' && (empty($content['task_notice']) || empty($content['bank_account']))) {
            if ($this->getValue('task_notice')) {
                $content['task_notice'] = json_decode(htmlspecialchars_decode($this->getValue('task_notice', true, 'string')), true);
            }
            if ($this->getValue('bank_account')) {
                $content['bank_account'] = json_decode(htmlspecialchars_decode($this->getValue('bank_account', true, 'string')), true);
            }
            $add = [];
            $add['type'] = 'public';
            $add['content'] = json_encode($content);
            $add['addtime'] = $add['uptime'] = time();
            $r = $this->s_config->save($add);
            if ($r) $this->success();
        }
    }
}


