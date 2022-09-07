<?php

namespace User;

use C\L\AdmController;

class NoticereadController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_noticeread;

        $this->hideKeys = [
            'is_delete'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['data']['uid'] = $this->uid;
        $this->params['page_num'] = 500;
        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as $k => &$item) {
            $notice = $this->s_notice->search($item['cid']);
            if(empty($notice)){
                $this->s_noticeread->update($item['id'], ['is_delete' => 1]);
                unset($data['list'][$k]);
                continue;
            }
            $item['name'] = $notice['name'];
            $item['addtime'] = $notice['addtime'];
            $item['is_read'] = $item['read_time'] > 0 ? true : false;
            $item['content'] = $notice['content'];
        }
        $data['no_read_num'] = $this->s_noticeread->getCount(['uid' => $this->uid, 'read_time' => 0]);
        return true;
    }

    protected function afterView(&$data)
    {
        $read = $this->s_noticeread->search(['uid' => $this->uid, 'cid' => $data['view']['id']]);
        if ($read && $read['read_time'] == 0) {
            $this->s_noticeread->update($read['uid'], ['read_time' => time()]);
        }
        return true;
    }

}


