<?php

return [
    //配置redis,cache，可以增加多个slave
    'dev' => [
        'master' => [
            'host' => '127.0.0.1',
            'port' => 6379,
            'select' => 0
        ],
    ],
    'prod' => [
        'master' => [
            'host' => '127.0.0.1',
            'port' => 6379,
            'select' => 0
        ],
    ]
];

