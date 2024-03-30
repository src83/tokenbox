<?php

/**
 * По мере выполнения скрипта требуется подключить тот или иной класс. Для этого запускается ф-ция автозагрузки.
 * $class - полное имя подключаемого класса, включая его namespace.
 */
spl_autoload_register(static function ($class) {

    $file = dirname(__DIR__) . '/' . str_replace('\\', '/', $class) . '.php';

    if (file_exists($file)) {
        require_once $file;
    }
});
