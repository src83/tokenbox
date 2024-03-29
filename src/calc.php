<?php

namespace src;

use lib\Calc;
use src\DTO\Calc\ConfigDTO;
use src\Utils\Calc\InputValidator;

require_once __DIR__ . '/custom_autoload.php';

define('TIME_START', microtime(true));

// -----------------------------------------------------------------------------

if (!InputValidator::validateArguments($argv)) { exit(1); }

$confDTO = new ConfigDTO($argv[1], $argv[2], $argv[3]);

$calc = new Calc($confDTO);
$calc->makeCalc();
$calc->printResult();

if (in_array('--stat', $argv, true)) {
    $calc->printStat();
}
