<?php

namespace Goods;

use C\L\AdmController;

class GoodsController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_goods;

        $this->keyworkSearchKeys = [
            'title'
        ];

        $this->pubSearchKeys = [
            'cat_id', 'status'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'ok_time'
        ];

        $this->createKeys = [
            'title','title_en','title_yn', 'credit', 'cat_id', 'thumb', 'thumbs', 'content', 'content_en', 'content_yn', 'sort', 'is_show_index', 'max_shop_num', 'status'
        ];

        $this->updateKeys = [
            'title','title_en','title_yn', 'credit', 'cat_id', 'thumb', 'thumbs', 'content', 'content_en', 'content_yn', 'sort', 'is_show_index', 'max_shop_num', 'status'
        ];
    }

    public function beforeSearch()
    {
        $keywordSearchValue = $this->getValue('keyword_search_value', false, 'string');
        if (!empty($keywordSearchValue)) {
            $this->params['data']['title'] = $keywordSearchValue;
            $this->params['data_type']['title'] = 'like';
        }
        $this->params['order'] = 'sort desc, id desc';

        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $item['thumbs'] = empty($item['thumbs']) ? [] : json_decode($item['thumbs'], true);
            $cat = $this->s_gcat->search($item['cat_id']);
            $item['cat_name'] = empty($cat) ? '' : $cat['name'];
        }
        $data['config']['cats'] = $this->s_gcat->searchPage(false, false, ['id', 'name']);
        return true;
    }

    protected function afterView(&$data)
    {
        $thumbs = json_decode($data['view']['thumbs'], true);
        $data['view']['thumbs'] = $thumbs ? : [];
        $data['config']['cats'] = $this->s_gcat->searchPage(false, false, ['id', 'name']);
        return true;
    }

    protected function beforeCreate(&$data)
    {
        $data['content'] = $this->request->getPost('content');
        if (isset($data['thumbs'])) {
            $data['thumbs'] = is_array($data['thumbs']) ? json_encode($data['thumbs']) : '';
        }
        return true;
    }

    protected function beforeUpdate(&$data)
    {
        if (!$this->getValue('id')) {
            $this->error('参数错误', 1);
        }
        if (isset($data['thumbs'])) {
            $data['thumbs'] = is_array($data['thumbs']) ? json_encode($data['thumbs']) : '';
        }
        $data['content'] = $this->request->getPost('content');
        return true;
    }


    public function configAction()
    {
        $this->success([
            'status' => $this->s_gcat->searchPage(false, false, ['id', 'name'])
        ]);
    }

}


