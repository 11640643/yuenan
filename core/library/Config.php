<?php

namespace C\L;

use Phalcon\Config as pConfig;

class Config extends Service
{
    private $defaultPath = APP_PATH . '/config/';

    private $defaultSysPath = CORE . '/config/';


    public function get($configNane, $configType = false, $isObj = true)
    {
        try {

            $path = $this->defaultPath;
            if ($configType) {
                $path = $this->defaultSysPath;
            }

            $file_path = $path . $configNane . '.php';
            if (!file_exists($file_path)) {
                throw new \Exception($file_path . $this->translate['conf_empty']);
            }

            $config = require $file_path;
            if (!is_array($config)) {
                throw new \Exception($this->translate['conf_err']);
            }

            $objConfig =  new pConfig($config);
            if(!empty($objConfig[APP_MODE])){
                $objConfig = $objConfig[APP_MODE];
            }

            if(!$isObj){
                return $objConfig->toArray();
            }

            return $objConfig;

        } catch (\Exception $e) {

            throw new \Exception($e->getMessage());
        }

    }


    public function getModConf()
    {
        $config = $this->get('modules');
        $modules = [];
        foreach ($config as $c) {

            $lower_c = strtolower($c);
            $path = APP_PATH . "/modules/{$lower_c}/Module.php";

            if (!file_exists($path)) {
                throw new \Exception($path . $this->translate['empty']);
            }

            $modules[$lower_c] = [
                'className' => $c . '\Module',
                'path' => $path,
            ];
        }
        return $modules;
    }

}
