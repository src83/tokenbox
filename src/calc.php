<?php

namespace src;

use Src83\TokenBoxCore\lib\Calc;
use Src83\TokenBoxCore\src\DTO\Calc\ConfigDTO;
use Src83\TokenBoxCore\src\Utils\Calc\InputValidator;

require_once dirname(__DIR__) . '/vendor/autoload.php';

define('TIME_START', microtime(true));

// -----------------------------------------------------------------------------

if (!InputValidator::validateArguments($argv)) {
    exit(1);
}

$confDTO = new ConfigDTO($argv[1], $argv[2], $argv[3]);

$calc = new Calc($confDTO);
$calc->makeCalc();
$calc->printResult();

if (in_array('--stat', $argv, true)) {
    $calc->printStat();
}
