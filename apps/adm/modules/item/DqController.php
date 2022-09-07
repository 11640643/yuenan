<?php

namespace Item;

use C\L\AdmController;

class DqController extends AdmController
{
    protected function init()
    {
        $this->service = $this->s_item;

        $this->pubSearchKeys = [
            'status', 'type'
        ];

        $this->likeSearchKeys = [
            'name'
        ];

        $this->hideKeys = [
            'is_delete'
        ];

        $this->timeToDateKeys = [
            'uptime', 'addtime', 'end_time'
        ];

        $this->createKeys = [
            'name','name_en','name_yn','stock','rem_count', 'min_money', 'max_money', 'schedule', 'is_low_risk', 'apr', 'days', 'type', 'max_count', 'status', 'sort', 'thumb', 'is_show_index', 'item_desc','item_desc_en','item_desc_yn', 'money', 'pack', 'top_apr', 'begin_time', 'pack_money', 'pack_max_num', 'prize_num', 'if_open_vouchers', 'vouchers_money'
        ];

        $this->updateKeys = [
            'name','name_en','name_yn', 'stock','rem_count','min_money', 'max_money', 'schedule', 'is_low_risk', 'apr', 'days', 'type', 'max_count', 'status', 'sort', 'thumb', 'is_show_index', 'item_desc','item_desc_en','item_desc_yn', 'money', 'pack', 'top_apr', 'begin_time', 'pack_money', 'pack_max_num', 'prize_num', 'if_open_vouchers', 'vouchers_money'
        ];
    }

    protected function beforeSearch()
    {
        $this->params['order'] = 'sort desc';
        return true;
    }

    protected function afterSearch(&$data)
    {
        foreach ($data['list'] as &$item) {
            $item['sum_money'] = $this->s_il->getSum('money', ['cid' => $item['id']]);
	    $item['buy_count'] = $this->s_il->getCount(['id'], ['cid' => $item['id']]);
	    $item['rem_count'] = isset($item['stock']) && $item['stock'] >0 ? $item['stock'] - $item['buy_count']:0;
       	    $item['schedule'] = isset($item['stock']) && $item['stock'] >0 ? 100*bcdiv($item['buy_count'],$item['stock'],2).'%':'10%';
	
	 }
        return true;
    }

    protected function beforeCreate(&$data)
    {
        $this->rule($data);
        return true;
    }

    protected function beforeUpdate(&$data)
    {
        $this->rule($data);
        return true;
    }

    private function rule($data)
    {
        if ($data['days'] <= 0) {
            $this->error('投资天数不能为0或小于0的数');
        }

        /*if($data['money'] <= 0){
            $this->error('项目金额不能为小于等于0');
        }*/

        if (bcmul($data['apr'], $data['min_money'] / 100, 2) == 0) {
            $this->error('当前利率 * 最小金额 不能为0');
        }

        if ($data['type'] == 'B' && $data['days'] % 7 != 0) {
            $this->error('投资类型为周返，则投资天数应为7的倍数');
        }

        if ($data['type'] == 'C' && $data['days'] % 30 != 0) {
            $this->error('投资类型为周返，则投资天数应为30的倍数');
        }

//        if($data['money'] / $data['min_money'] > 10000){
//            $this->error('为了保证进度能正常使用，项目金额最大为最小投资金额的10000分之1');
//        }
    }

    public function closeAction()
    {
        $ids = $this->getValue('id', true);
        if($this->s_item->update($ids, ['status' => 'N'])){
            $this->success();
        }
        $this->error();
    }

    public function backmoneyAction()
    {
        $id = $this->getValue('id', true, 'int');

        if ($this->s_item->backMoney($id)) {
            $this->success();
        }

        $this->error();
    }
}


