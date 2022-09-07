<?php

namespace Goods;

use C\L\WebUserController;
use C\L\Controller;
class InfoController extends Controller
{
    protected function init()
    {
        $this->service = $this->s_goods;

        $this->pubSearchKeys = [
            'cat_id'
        ];
        $this->language_fields = [
            'name'
        ];
        $this->language_fields_list = [
            'title'
        ];
    }

    protected function afterSearch(&$data)
    {
        #$data['credit'] = $this->s_user->getValue('credit', $this->uid);
        $data['config']['cats'] = $this->s_gcat->searchPage(false, false, ['id', 'name','name_en','name_yn']);
        if($this->language != 'cn'){
            foreach($data['config']['cats'] as &$v){
                foreach($this->language_fields as $field){
                    $v[$field] = $v[$field.'_'.$this->language];
                }
            }
        }
        if($this->language != 'cn'){
            foreach($data['list'] as &$v){
                foreach($this->language_fields_list as $field){
                    $v[$field] = $v[$field.'_'.$this->language]?$v[$field.'_'.$this->language]:$v[$field];
                }
                $v['credit'] = intval($v['credit']);
            }
        }


        return true;
    }

    public function afterView(&$data)
    {
        $data['view']['thumbs'] = empty($data['view']['thumbs']) ? [] : json_decode($data['view']['thumbs'], true);
        if($this->language != 'cn'){
                foreach($this->language_fields_list as $field){
                    $data['view'][$field] = $data['view'][$field.'_'.$this->language]?$data['view'][$field.'_'.$this->language]:$$data['view'][$field];
                }
            
        }
        return true;
    }

    protected function beforeSearch()
    {
        $this->params['page_num'] = 500;
        $order = $this->getValue('order', false, 'string');
        $catId = $this->getValue('cat_id', false, 'int');
        if (!empty($catId)) {
            $this->params['data']['cat_id'] = $catId;
        }

        // $this->params['data']['status'] = 'Y';
        //$this->params['order'] = empty($order) ? 'sort desc' : $order;
         $this->params['order'] = 'sort desc';	
	 return true;
    }

    public function configAction()
    {
        $data = [
            #'credit' => $this->s_user->getValue('credit', $this->uid),
            'cats' => $this->s_gcat->searchAll(false, false, ['id', 'name','name_en','name_yn']),
        ];
        if($this->language != 'cn'){
            foreach($data['cats'] as &$v){
                foreach($this->language_fields as $field){
                    $v[$field] = $v[$field.'_'.$this->language];
                }
            }
        }
        $this->success($data);
    }

}


