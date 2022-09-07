<?php

namespace User;

use C\L\AdmController;

class ReplybackController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_replyback;
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime'
        ];

        #$this->pubSearchKeys = [
        #    'type', 'stype', 'month'
        #];
    }

    protected function beforeSearch()
    {
	$page_num = $this->getValue('page_num', false, 'int') ?? 10;
        #$this->params['data']['status'] = 'Y';
	$this->params['order'] = 'addtime desc';
	$this->params['page_num'] = $page_num;
       /* $type = $this->getValue('type', false, 'string');
        $this->params['data']['type'] = $type ?? 'money';
        $this->params['page_num'] = 10000;
        if (isset($this->params['data']['stype']) && $this->params['data']['stype'] == 'checkin') {
            $this->params['data']['stype'] = ['checkin', 'cumulative_sign'];
            $this->params['data_type']['stype'] = 'in';
        }
        if (isset($this->params['data']['month'])) {
            $month = $this->params['data']['month'];
            list($year, $month) = explode('-', $month);
            unset($this->params['data']['month']);
            $t = cal_days_in_month(CAL_GREGORIAN, $month, $year);
            $stime = mktime(0, 0, 0, $month, 1, $year);
            $etime = mktime(23, 59, 59, $month, $t, $year);
            $this->params['data']['addtime'] = [$stime, $etime];
            $this->params['data_type']['addtime'] = 'between';
        }*/
        return true;
    }
    public function replyAction(){
	
	$content = $this->getValue('reply_content',true,'string');
	$reply_id = $this->getValue('reply_id',true,'int');
	$reply_time = date("Y-m-d H:i:s");
	if($res = $this->s_replyback->reply($content,$reply_time,$reply_id)){
		$this->success();
	}
	$this->error();
    }
    /*protected function afterSearch(&$data)
    {
	
	
        #系统充值title显示
        foreach($data['list'] as $key=>$val){
	  $data['list']
        }

        $uid = $this->uid;
        $data['value'] = $type = $this->getValue('type') == 'money' ? $this->s_user->getValue('money', $uid) : $this->s_user->getValue('credit', $uid);
        
        return true;
    }*/

}


