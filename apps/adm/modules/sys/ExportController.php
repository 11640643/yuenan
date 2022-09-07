<?php

namespace Sys;

use C\L\AdmController;

class ExportController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_export;
        $this->timeToDateKeys = [
            'uptime', 'addtime',
        ];
    }

    protected function afterSearch(&$data)
    {
        $data['export_file_loading'] = $this->cache->get('start_user_csv') > 0 ? true : false;
        return true;
    }

    public function exportAction()
    {
        $isLoading = false;
        $type = $this->getValue('type', true, 'string');
        if ($type == 'user') {

            if ($this->cache->get('start_user_csv') > 0) {
                $isLoading = true;
            } else {

                $this->cache->set('start_user_csv', 2);
            }

        }

        $this->success([
            'is_loading' => $isLoading
        ]);
    }

    public function exportStatusAction()
    {
        $isLoading = false;
        $type = $this->getValue('type', true, 'string');

        if ($type == 'user') {

            if ($this->cache->get('start_user_csv') > 0) {
                $isLoading = true;
            }
        }

        $this->success([
            'is_loading' => $isLoading,
        ]);
    }
}


