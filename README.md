# Tokenbox

## О проекте

Данный проект является учебным и не предназначен для использования на production среде. 
Единственная его цель - сгенерировать 1 млрд уникальных, хорошо перемешанных токенов и загрузить их в БД ClickHouse.

В проекте могут встречаться недоработанные части кода, места, которые можно улучшить и оптимизировать, незавершённые 
реализации (например, тесты), что является допустимым, поскольку упор делается на возможность быстрого решения 
основной задачи.

Текущая реализация исправна и протестирована. В среднем, на весь цикл уходит примерно 25 минут. Упаковка токенов реализована 
через открытую библиотеку Base62. Для ознакомления с библиотекой ниже описан пример утилиты "Калькулятор". 
Также, есть и описание непосредственно работы с токенами.

**P.S.** Проект выполнен на базе Docker-сборки из соседнего репозитория: https://github.com/src83/docker

Предполагается, что есть, по крайней мере запущенный контейнер с PHP и отдельно с ClickHouse.

В проекте используется ядро, подключаемое как зависимость и внешний репозиторий: https://github.com/src83/tokenbox-core

## Текущая структура папок
```bash
└─ app
   ├─ bin
   ├─ data
   │  ├─ csv
   │  ├─ storage
   │  └─ txt
   └─ vendor
      └─ src83
         └─ tokenbox-core
            ├─ lib
            ├─ src
            │  ├─ DTO
            │  │  ├─ Calc
            │  │  └─ Generator
            │  └─ Utils
            │     ├─ Calc
            │     └─ Generator
            └─ tests
```


## Установка

### 1. Заходим в контейнер с PHP
```bash 
make connect_php
```

### 2. Подтягиваем composer-зависимости
```bash 
composer update
```


## Калькулятор:

### 1. Общий случай:
```bash
php src/calc.php <from> <to> <value> [--stat]
```
"from" и "to" - номера систем счисления (от 2 до 62).

"--stat" - опциональный ключ для вывода статистики. 

### 2. Перевод с 10й в 62ю систему счисления:
```bash
php src/calc.php 10 62 100000
```
Ответ: q0U

### 3. Перевод с 62й в 10ю систему счисления:
```bash
php src/calc.php 62 10 16LAzd
```
Ответ: 1016132831

### 4. UnitTest калькулятора:
```bash
clear; vendor/bin/phpunit --testdox vendor/src83/tokenbox-core/tests --colors
```


## Генерация токенов (по шагам):

### 1. Инициализация проекта
```bash
bash bin/00-init.sh
```
Результат: создание папок "data/txt", "data/csv".
Время: ~0 min


### 2. Запуск генерации токенов
```bash
bash bin/generator.sh
```
Результат: выходные файлы с токенами появится в папке "data/txt".
Время: ~18 min


### 2.1. Проверка наличия дубликатов в итоговых файлах (опционально)
```bash
bash bin/utest.sh
```
Результат: общая информация о факте нахождения дубликатов в консоли.
Время: ~12 min


### 3. Перевод токенов из txt в csv (для загрузки в ClickHouse)
```bash
bash bin/txt2csv.sh
```
Результат: выходные файлы с токенами появится в папке "data/csv".
Время: ~5 min


### 4. Тест доступности БД:
4.1 Накатить миграции из `data/storage/migrations.sql`

4.2 Проверить доступность базы.
```bash
bash bin/dbtest.sh
```
Результат: Статус подключения в виде строки в консоли.
Время: ~0 min


### 5. Загрузка данных в БД ClickHouse:
```bash
bash bin/upload.sh
```
Результат: Загруженные токены в таблицы ClickHouse.
Время: ~2.5 min


### 6. Удаление с диска токенов в виде txt и csv
Удаление txt: 
```bash
rm data/txt/*
```
Удаление csv:
```bash
rm data/csv/*
```


## Дополнительно:

### 1. Немного теории (расчёты диапазонов)

Таблица диапазонов токенов:
* Ёмкость диапазона равна длине токена.
* Колонке "Capacity" - количество токенов в диапазоне.

```
======================================================================================================================
I | Pow  | Maxs offset |      Ranges [10]       |   Ranges [62]   | Capacity  | Side   |    Side^2 | cutoff | offset
---+------+-------------+------------------------+-----------------+-----------+--------+-----------+--------+--------
1 | 62^1 |          62 |         0 -         61 |      0 -      Z |        62 |      8 |        64 |      2 | 0
2 | 62^2 |        3844 |        62 -       3843 |     10 -     ZZ |      3782 |   base |      3844 |   base | base^1
3 | 62^3 |      238328 |      3844 -     238327 |    100 -    ZZZ |    234484 |    485 |    235225 |    741 | base^2
4 | 62^4 |    14776336 |    238328 -   14776335 |   1000 -   ZZZZ |  14538008 |   3813 |  14538969 |    961 | base^3
5 | 62^5 |   916132832 |  14776336 -  916132831 |  10000 -  ZZZZZ | 901356496 |  30023 | 901380529 |  24033 | base^4
6 | 62^6 | 56800235584 | 916132832 - 1000000000 | 100000 - 15FTGg |  83867168 |   9158 |  83868964 |   1796 | base^5
======================================================================================================================
```


### 2. Проверка кода на соответствие PSR-12 (codeStyle)
Проверка:
```bash
clear; vendor/bin/php-cs-fixer -vvv check src
clear; vendor/bin/php-cs-fixer -vvv check vendor/src83/tokenbox-core
```

Исправления:
```bash
clear; vendor/bin/php-cs-fixer -vvv fix src
clear; vendor/bin/php-cs-fixer -vvv fix vendor/src83/tokenbox-core
```

----------------------------------------------------------------------------------------------------------------------
