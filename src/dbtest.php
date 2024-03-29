<?php

namespace src;

use ClickHouseDB\Client;

require_once dirname(__DIR__) . '/vendor/autoload.php';

// -----------------------------------------------------------------------------

$config = [
    'host' => 'tokenbox_ch',
    'port' => '8123',
    'username' => 'user',
    'password' => 'password',
    'https' => false
];

$db = new Client($config);
$db->database('tokenbox');
$db->setTimeout(1.5);             // 1 second , support only Int value
$db->setTimeout(10);              // 10 seconds
$db->setConnectTimeOut(5);  // 5 seconds
$st = $db->ping();                       // if can`t connect throw exception

echo 'Connect: ';
echo ($st) ? 'true'."\n" : 'false'."\n";

#$statement = $db->select('SELECT hash FROM hash_pool_v4 LIMIT 1');
#print_r($statement->fetchOne());
