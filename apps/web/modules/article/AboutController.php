<?php

namespace Article;

use C\L\Controller;

class AboutController extends Controller
{

    protected function init()
    {
        $this->service = $this->s_article;

        $this->hideKeys = [
            'is_delete'
        ];
        $this->language_fields = [
          'title'
      ];
    }

    public function beforeSearch()
    {
        $this->params['page_num'] = 100;
	$type = $this->getValue('type',false,'string');
	$this->params['data']['cid'] = 2;
	if(isset($type) && $type=='focus'){
	  $this->params['data']['cid'] = 3;
	}elseif(isset($type) && $type=='index_article_config'){
	  $this->params['data']['cid'] = 4;	
	}elseif(isset($type) && $type=='notice'){
	  $this->params['data']['cid'] = 5;		
	}
        $this->params['data']['is_disable'] = 'Y';
        $this->params['order'] = 'sort desc';
        return true;
    }
    protected function afterSearch(&$data)
    {

        //多语言设置
        // 配置需要转换成站点语言的字段配置
        if($this->language != 'cn'){
            foreach ($data['list'] as &$item) {
                foreach($this->language_fields as $v){
                    $item[$v] = $item[$v.'_'.$this->language]?$item[$v.'_'.$this->language]:$item[$v];
                }
            }
        }
        return true;
    }
    public function detailAction()
    {
        $code = $this->getValue('code', true, 'string');
        $article = $this->s_article->search(['code' => $code, 'is_disable' => 'Y'], [], ['title', 'content']);
        if ($article) {
            $this->success($article);
        }

        $this->error($this->translate['content_empty']);
    }
}


