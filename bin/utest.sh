#!/bin/bash

time {

clear;

d_txt="data/txt/"

files=(
    "$d_txt""box_L1_8x8_01.txt"
    "$d_txt""box_L2_62x62_01.txt"
    "$d_txt""box_L3_485x485_01.txt"
    "$d_txt""box_L4_3813x3813_01.txt"
    "$d_txt""box_L5_5000x5000_A1.txt"
    "$d_txt""box_L6_5000x5000_01.txt"
)

# Проверка существования файлов
for file in "${files[@]}"; do
    if [ ! -e "$file" ]; then
        echo "Файл $file не существует."
        exit 1
    fi
done

for file in "${files[@]}"; do
    if [ "$(sort -u "$file" | wc -l)" -eq "$(wc -l < "$file")" ]; then
        echo "$file: Дубликатов строк в файле нет."
    else
        echo "$file: Обнаружены дубликаты строк в файле."
    fi
done

}

echo "Memory Usage: $(ps -o rss= -p $$) KB"
exit;


###################################
#data/txt/box_L1_8x8_01.txt: Дубликатов строк в файле нет.
#data/txt/box_L2_62x62_01.txt: Дубликатов строк в файле нет.
#data/txt/box_L3_485x485_01.txt: Дубликатов строк в файле нет.
#data/txt/box_L4_3813x3813_01.txt: Дубликатов строк в файле нет.
#data/txt/box_L5_5000x5000_A1.txt: Дубликатов строк в файле нет.
#data/txt/box_L6_5000x5000_01.txt: Дубликатов строк в файле нет.

#real    12m33.878s
#user    35m53.893s
#sys     0m46.892s
#Memory Usage:  2704 KB
