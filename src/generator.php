<?php

namespace src;

use Src83\TokenBoxCore\lib\TokenBox;
use Src83\TokenBoxCore\src\Utils\Generator\ConfigProvider;
use Src83\TokenBoxCore\src\Utils\Generator\InputValidator;

require_once dirname(__DIR__) . '/vendor/autoload.php';

define('TIME_START', microtime(true));

// -----------------------------------------------------------------------------

if (!InputValidator::validateArguments($argv)) {
    exit(1);
}

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
