<?php

namespace C\S\User;

use C\L\Service;

class ReplyBack extends Service
{
    protected function setModel()
    {
        $this->model = new \C\M\UserReplyBack();
    }

    public function getStatusConfig()
    {
        return [
            'type' => [
                'A' => $this->translate['type_a'],
                'B' => $this->translate['type_b'],
                'C' => $this->translate['type_c'],
		        'D' => $this->translate['type_d']
            ],
        ];
    }
    public function add($type,$content,$image,$name,$mobile,$uid)
    {
	try{
		if (!$this->di['public']->checkMobile($mobile)) {
                	throw new \Exception($this->translate['mobile_err']);
       		 }	
		$data = [
			'type'=>$type,
			'content'=>$content,
			'image'=>$image,
			'name'=>$name,
			'mobile'=>$mobile,
			'uid'=>$uid
		];
		if(!$id = $this->save($data)){
			throw new \Exception($this->translate['doerror']);
		}
		return true;
	} catch (\Exception $e) {
		$this->di['message']->setSerMsg($e->getMessage());
            	return false;
	}

    }
    public function reply($content,$reply_time,$reply_id)
    {
        try {
            $reply_back = $this->di['s_replyback']->search(['id' => $reply_id]);
            if (!empty($reply_back['reply_content'])) {
                throw new \Exception($this->translate['has_replay']);
            }
	   #var_dump(['reply_content'=>$content,'reply_time'=>$reply_time]);exit;
            if(!$this->di['s_replyback']->update($reply_id,['reply_content'=>$content,'reply_time'=>$reply_time])){
		 throw new \Exception($this->translate['replay_error']);
	    }
	    return true;

        } catch (\Exception $e) {
            $this->di['message']->setSerMsg($e->getMessage());
            return false;

        }
    }

    public function pluck($uid)
    {
        try {

            $tree = $this->di['s_tree']->search(['uid' => $uid, 'status' => 'D']);
            if (empty($tree)) {
                throw new \Exception($this->translate['guoshi_wei']);
            }

            $num = $this->di['s_config']->get('tree')['num'];
            $this->di['db']->begin();

            if (!$this->di['s_funds']->add($uid, $num, 'fruit', 'tree_pluck', $this->translate['guoshi_caizhai'], $tree['id'])) {
                throw new \Exception($this->translate['funds_add_error']);
            }

            if (!$this->di['s_tree']->update($tree['id'], ['status' => 'Y'])) {
                throw new \Exception($this->translate['update_err']);
            }

            if (!$this->di['s_tree']->save(['uid' => $uid])) {
                throw new \Exception($this->translate['update_err']);
            }

            $this->di['db']->commit();

            return $num;


        } catch (\Exception $e) {

            if ($this->di['db']->isUnderTransaction()) {
                $this->di['db']->rollback();
            }

            $this->di['message']->setSerMsg($e->getMessage());
            return false;

        }
    }

    public function getTreeType($value)
    {
        $config = $this->di['s_config']->get('tree')['tree'];
        $type = 'tree0';
        ksort($config);

        $max = 0;
        foreach ($config as $k => $v) {

            $max += $v['value'];
            if ($max > $value) {
                continue;
            }

            $type = $k;
        }

        return $type;
    }

    public function getTreeValue($type)
    {
        $config = $this->di['s_config']->get('tree')['tree'];
        ksort($config);
        $value = 0;
        foreach ($config as $k => $v) {
            $value += $v['value'];
            if ($k == $type) {
                return $value;
            }
        }
        return $value;
    }

    public function getTreeNum()
    {
        $config = $this->di['s_config']->get('tree')['tree'];
        $num = 0;
        foreach ($config as $k => $v) {
            $num += $v['value'];
        }

        return $num;
    }

    /**
     * ???????????????????????????
     * $tree_config       array     ?????????  ???????????????
     * $user_take_part    array     ???????????????????????????
     */
    public function countTreeProgress($tree_config, $user_take_part)
    {
        $watering = 1;  // ???????????????1???
        $to_manure = 2; // ???????????????2???
        $need_total_num = 0;   // ????????????????????????
        $user_take_part_num = 0;    // ????????????????????????
        foreach ($tree_config as $key => $phase) {
            $need_total_num += $phase['value'];
        }
        $user_take_part_num = ($user_take_part['water'] * $watering) + ($user_take_part['manure'] * $to_manure);
        $ratio = ($user_take_part_num / $need_total_num) * 100;
        return floor($ratio * 100) / 100;
    }

    /**
     * ????????????icon
     * 
     */
    public function getAdvicon($uid)
    {
        // ?????????????????????????????????
        $item_dq = $this->di['s_config']->search(['type' => 'item_dq']);
        $set_sign_num = json_decode($item_dq['content'], true)['signin_num'];
        // ?????????????????????????????????
        $user_sign_num = $this->di['s_funds']->getCount(['uid' => $uid, 'title' => $this->translate['sign_awards']]);
        // ?????????????????????
        $tree = $this->di['s_tree']->search(['uid' => $uid, 'status' => 'S']);
        // ????????????icon??????
        $advicon = $this->di['s_advicon']->searchAll(['status' => 1]);
        $res = [];
        foreach ($advicon as $key => $value) {
            $condition = json_decode($value['condition'], true);
            if (isset($tree['value']) && $tree['value'] >= $condition['value']) {
                $res[] = $value;
                continue;
            }
            if ($user_sign_num >= $set_sign_num) {
                $res[] = $value;
                continue;
            }
        }
        return $res;
    }
}
