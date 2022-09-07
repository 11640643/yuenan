<?php

namespace Sys;

use C\L\AdmController;

class ImageController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_image;

        $this->timeToDateKeys = [
            'uptime', 'addtime',
        ];

        $this->pubSearchKeys = [
            'type'
        ];

        $this->createKeys = [
            'sort', 'thumb', 'url', 'name', 'type', 'status', 'image'
        ];

        $this->updateKeys = [
            'sort', 'thumb', 'url', 'name', 'type', 'status', 'image'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['order'] = 'sort desc';
        return true;
    }
}


