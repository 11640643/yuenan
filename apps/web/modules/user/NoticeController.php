<?php

namespace User;

use C\L\AdmController;

class NoticeController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_notice;

        $this->hideKeys = [
            'is_delete'
        ];
    }

    protected function beforeView()
    {
        $id = $this->getValue('id', true, 'int');
        if (!$this->service->search($id)) {
            $read = $this->s_noticeread->search(['uid' => $this->uid, 'cid' => $id]);
            if ($read) {
                $this->s_noticeread->update($read['id'], ['is_delete' => 1]);
            }
            $this->error($this->translate['content_empty']);
        }
        return true;
    }

    protected function afterView(&$data)
    {
        $read = $this->s_noticeread->search(['uid' => $this->uid, 'cid' => $data['view']['id']]);
        if ($read) {
            $this->s_noticeread->update($read['id'], ['read_time' => time()]);
        }
        return true;
    }

}


