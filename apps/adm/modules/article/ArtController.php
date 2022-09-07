<?php

namespace Article;

use C\L\AdmController;

class ArtController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_article;
        $this->likeSearchKeys = [
            'title',
        ];
        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime'
        ];

        $this->updateKeys = [
            'pubtime','title','title_en','title_yn', 'content','content_en','content_yn', 'is_disable', 'sort', 'cid', 'icon','thumb','is_show_index'
        ];

        $this->createKeys = [
            'pubtime','title','title_en','title_yn', 'content','content_en','content_yn', 'is_disable', 'sort', 'cid', 'icon','thumb','is_show_index'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['order'] = 'sort desc,id desc';
        $type = $this->getValue('type', false, 'string');
        $this->params['data']['cid'] = 1;
        if($type == 'about'){
            $this->params['data']['cid'] = 2;
        }elseif($type == 'focus'){
	    $this->params['data']['cid'] = 3; 	
	}elseif($type == 'index_article_config'){
	    $this->params['data']['cid'] = 4;	
	}elseif($type=='notice'){
	    $this->params['data']['cid'] = 5;	
	}
        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $cat = $this->s_acat->search($item['cid']);
            $item['cat_name'] = $cat['name'];
            $item['cat_type_name'] = $this->s_acat->getStatusConfig()['type'][$cat['type']];
            $item['url'] = '/art/' . $item['code'];
        }
        return true;
    }

    protected function beforeUpdate(&$data)
    {
        if (empty($data['cid'])) {
            $this->error('必须选择分类');
        }
        $data['content'] = $this->request->getPost('content');
        return true;
    }

    protected function beforeCreate(&$data)
    {
        if (empty($data['cid'])) {
            $this->error('必须选择分类');
        }
        $data['content'] = $this->request->getPost('content');
        return true;
    }

    protected function afterCreate(&$data)
    {
        $this->s_article->update($data['id'], ['code' => substr(md5($data['id']), 0, 6)]);
        return true;
    }

    public function configAction()
    {
        $this->success([
            'cats' => $this->s_acat->searchAll([], [], ['id', 'name'])
        ]);
    }

}


