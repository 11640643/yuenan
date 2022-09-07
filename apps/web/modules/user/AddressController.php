<?php

namespace User;

use C\L\WebUserController;

class AddressController extends WebUserController
{

    protected function init()
    {
        $this->service = $this->s_address;

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime',
        ];
    }

    protected function beforeSearch()
    {
        $this->params['data']['uid'] = $this->uid;
        return true;
    }

    protected function afterView(&$data)
    {
        $data['view']['tags'] = json_decode($data['view']['tags'], true);
        return true;
    }

    public function saveAction()
    {
        $id = $this->getValue('id', true, 'int');
        $name = $this->getValue('name', true, 'string');
        $tags = $this->getValue('tags');
        $tag = $this->getValue('tag', true);
        $tel = $this->getValue('tel', true, 'string');
        $province = $this->getValue('province', true, 'string');
        $city = $this->getValue('city', true, 'string');
        $county = $this->getValue('county', true, 'string');
        $address = $this->getValue('addressDetail', true, 'string');
        $areaCode = $this->getValue('areaCode', true, 'string');
        $postalCode = $this->getValue('postalCode', true, 'string');
        $isDefault = $this->getValue('isDefault', true);

        $data = [
            'uid' => $this->uid,
            'name' => $name,
            'tags' => $tags,
            'tag' => $tag,
            'tel' => $tel,
            'province' => $province,
            'city' => $city,
            'county' => $county,
            'address' => $address,
            'area_code' => $areaCode,
            'postal_code' => $postalCode,
            'is_default' => $isDefault ? 'Y' : 'N',
        ];
        // var_dump($data);
        $oldAddress = $this->s_address->search($id);
        if (isset($oldAddress['uid']) && $oldAddress['uid'] != $this->uid) {
            $this->error($this->translate['no_acccess']);
        }

        if ($isDefault) {
            $this->s_address->updates(['is_default' => 'N'], ['uid' => $this->uid]);
        }

        if ($oldAddress) {
            if ($this->s_address->update($id, $data)) {
                $this->success();
            }
        } else {

            if ($this->s_address->save($data)) {
                $this->success();
            }
        }

        $this->error();
    }
}


