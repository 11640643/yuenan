<?php

namespace Article;

use C\L\Controller;
class ProblemAnswerController extends Controller
{

    protected function init()
    {
        $this->service = $this->s_problem_answer;
	$this->showKeys = [
	     'problem',	
             'content', 
        ];
        $this->hideKeys = [
            'is_delete'
        ];
    }

    public function beforeSearch()
    {
	$pid = $this->getValue('pid',false,'int');
	if($pid){
	  $this->params['data']['pid'] = $pid;
	}
        $this->params['page_num'] = 100;
        $this->params['order'] = 'sort asc';
        return true;
    }

   public function afterSearch(&$data){
	
	$this->success($data);

  }
}

