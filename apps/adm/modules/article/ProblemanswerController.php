<?php

namespace Article;
use C\L\AdmController;
class ProblemAnswerController extends AdmController
{

    protected function init()
    {
        $this->service = $this->s_problem_answer;
/*	$this->showKeys = [
             'content', 
        ];*/
        $this->hideKeys = [
            'is_delete'
        ];
	$this->timeToDateKeys = [
            'uptime', 'addtime'
        ];

        $this->updateKeys = [
            'problem','content', 'sort','pid'
        ];

        $this->createKeys = [
            'problem','content', 'sort','pid'
        ];

    }

    public function beforeSearch()
    {
	$pid = $this->getValue('pid',false,'int');
	if($id){
	  $this->params['data']['pid'] = $pid;
	}
        $this->params['page_num'] = 100;
        $this->params['order'] = 'sort asc';
        return true;
    }

    public function afterSearch(&$data){
	foreach($data['list'] as $key=>$val){
	     $data['list'][$key]['category'] = $this->s_problem->search($val['pid'])['title'];	
	}
		
	$this->success($data);
    }
}

