<?php

namespace Article;

use C\L\Controller;
class ProblemController extends Controller
{

    protected function init()
    {
        $this->service = $this->s_problem;
	$this->showKeys = [
            'id', 'title', 
        ];
        $this->hideKeys = [
            'is_delete'
        ];
    }

    public function beforeSearch()
    {
	/*$id = $this->getValue('id',false,'int');
	if($id){
	  $this->params['data']['id'] = $id;
	}*/
        $this->params['page_num'] = 100;
        $this->params['order'] = 'sort asc';
	$this->params['field'] = ['id','title'];
        return true;
    }

    /*public function afterSearch(&$data){

	foreach($data['list'] as $key=>&$val){
	    $val['answer_list'] = $this->s_problem_answer->searchAll(['pid'=>$val['id']],[],['content']);
	}
	$this->success($data);
    }*/
}


