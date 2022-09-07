<?php

namespace C\S\Business;

use C\L\Service;

class BusinessCooList extends Service
{
    protected function setModel()
    {
        $this->model = new \C\M\BusinessCooList();
    }

    public function getStatusConfig()
    {
        return [
     	       'status' => [
                'Y' => $this->translate['yes'],
                'N' => $this->translate['no']
            ],
        ];
    }

    public function apply($name,$company,$city,$status,$tel,$uid,$pid)
    {
        try {

	    $business_coo = $this->di['s_business_coo']->search($pid);
	    if(!$business_coo){
               throw new \Exception($this->translate['nodata']);
            }
	    $today_apply_count  = $this->di['s_business_coo_list']->getCount(['uid'=>$uid,'addtime'=>strtotime(date("Y-m-d 00:00:00"))],['uid'=>'=','addtime'=>'>=']);
	    if($today_apply_count>=3){
	       throw new \Exception($this->translate['daybuylimit']);	
	    }
	    $data = [
		'name'=>$name,
		'company'=>$company,
		'city'=>$city,
		'status'=>$status,
		'tel'=>$tel,
		'uid'=>$uid,
		'pid'=>$pid, 	
	    ];
            $this->di['db']->begin();
	    if(!$cid = $this->save($data)){
		throw new \Exception($this->translate['apple_err']);
	    }
            $this->di['db']->commit();
            return $cid;

        } catch (\Exception $e) {

            if ($this->di['db']->isUnderTransaction()) {
                $this->di['db']->rollback();
            }

            $this->di['message']->setSerMsg($e->getMessage());
            return false;
        }
    }
}
