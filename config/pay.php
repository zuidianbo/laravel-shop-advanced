<?php

return [
    'alipay' => [
        'app_id'         => '2021000117656326',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhx8p6EIeCKFH4OMFSE9RqdJ3UnCubNuSmqOv3o/BhSH2Wn0qYJ7ONeapGzD3pE0nS2bVXHSsYImsreLpi+bTkEuHsFoArZjN8b3rOGy0r8gu2tGGyXoNjgpcJtghsA51ZlM7kTa+GAlzD9jiBf7v6Nrjp6TAurGhX/Tfhqs9GfTecyQSVeoXeF273YgRw1PWToF204vcKYKm0z3Q5ybi/Q23JOpyle0XuHOFpfQkkvJXwtl8+FZVX7EviufmwZnqbWzLMICfahl575yGSFYzPnwisJyTVO3ih2Zg/bllaxA58q+R8HDw0QGKKt6JTWann4jqxTJ5yNVKmSBRcwEc/wIDAQAB',
        'private_key'    => 'MIIEogIBAAKCAQEA2+7rHx5djOwbt2cJe1TYefs4SSGbhEPrkO2Z5rEhTGcjKln9yHEOOO3A/Klc1aG5gTPm/iPzdB10Cxs+zw+ibpKgIv5BVa6Nnw3qGBI+Xv3uC+jsS/WpxxEK3WV0JPBFHNVtB5YnIO7dQNsZXoFxfYSJOn17vtMDgHrEZNgQLtsY2SqJr8PTjEGBjZpEyuhTMC+L7e7G382X5PpgkMs/re6T7NyXndkVPcyOKEtSwrJLKo9ad2vpdvevNNzQPiB1sTToDLsrjbvIQpKg9CgyggHZ1L6kNUdrzWCZpOsUrAYQZaNHik8sPvmfKPCx7hRvFpqP7y7yI21SkdXjgFXiewIDAQABAoIBAAhPInrufsJQOUvYjLcoIXWaVCoPJvz8Q+4Zy/K3RnbIfr+e3sOv4cWs1dm13FgF4ChNebCoUw5T/opc4SaZhJ2A1KP9zyIZkigsMmfuaITWOyQgDK1h/qQStMJgjt7GZRYNyiy7M4c+/wTwQikb4tnHJBgdnYs8FanI+ZqFvzbF5mAUGaSMUIGPLwZNBwaYxXLnpwPoFJ61H/SLR0/82VLxvk8AyDsPOlxnMheHxV2u1tEUXK8y6dEoxhkyJPQiVvS2h4Vy7c6NsC5S/FTWIeYDT5nWqojyzf/tc8+N4/2/h949BPL2SmkkLMcPZFyzyPkUQQ+p+cb9gyJas6wAeSECgYEA8IQ9NBg1TGfzbUmJW+SPDm9840443gaf89ymfEOtgdJlQq5CH37rUlVe4i78RwzkU41QrKL5GAgYYNw2MdNXppQJrlDpled5u5XFZWxBPzxJHO4liWgnt8a/wii/Vi03v9yAOMG2irw4T3os9Y9xTNesnNj7h946vOWmV8Zeqy8CgYEA6hd2djJxeA8+t3j/ZxPcx3lzLxRuTrZCC0CnCMVyzS5YzNMrTEx6OnfGvrdbxhR9rtWTR09SCn+PkFBatpUKqSnWAX2Hoec9oY8cXQxnSbGJ1mxcRXBYeJpUW7k0EAGLJisqLCYkRpWDE8tIjTaBdhx57bgBoz49iAngWCoHOnUCgYA667puo6uS7zhUQpqS13gwSiGnMcd+pNLUk+55LL85uYgzAKuUOax+fAmFkYseAMuCqHDmCfrJ51nJiMkCBctINKX2fT3sCkvpJ3S3NwD489TZcIHjmo94VwktEHxnKSaqKuOCg/orHJcS6VRQR/ayo3dW6VUdYNS05/GLOT6B4wKBgHaVYiYoEYD/QAcTXVYrIqlN5cKQt/xZqYUnwDXaR/iWpNdFleZ1y2k46c4M9omWMcDSYmQ6U1YMHn69peZeA+OD1Ow2WfHzQS5JX9XnBZ+4NxoPFIL8kWSu0VMRs8Tz8zhnn1p0C+ZRsO/jB6K5XMWnUUDR+MpoKiVy01n2GGlNAoGAXhc0bwCI3zqpGjwDXHbGv5mrl5+jkOaJH5SEZsiF8WSSWhatGCMNUoFIPxHUrUeqRKuHCa4QXPT1c/Gl5gMxpKuR1SuAD/mHRryvCplEbAVQMCaeAUwe0cJPB8q4HSKc2UDLZosZGEXTVatKG96ZSynJ6+wSyJAJT466is57OBQ=',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];