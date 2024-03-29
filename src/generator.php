<?php

namespace src;

use lib\TokenBox;
use src\Utils\Generator\ConfigProvider;
use src\Utils\Generator\InputValidator;

require_once __DIR__ . '/custom_autoload.php';

define('TIME_START', microtime(true));

// -----------------------------------------------------------------------------

if (!InputValidator::validateArguments($argv)) { exit(1); }

$configDTO = ConfigProvider::getConfig($argv);

$boxObj = new TokenBox($configDTO);

$boxObj->makeBox();

if (in_array('--mix', $argv, true)) {
    $boxObj->mixBox();
}

$boxObj->hashBox();

$boxObj->cutBox();

$boxObj->saveBox();

// -----------------------------------------------------------------------------

if (in_array('--pb', $argv, true)) {
    $boxObj->printBox();
}
if (in_array('--stat', $argv, true)) {
    $boxObj->printStat();
}
