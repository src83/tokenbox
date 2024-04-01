#!/bin/bash

d_txt="data/txt/"
d_csv="data/csv/"

L1_in=$d_txt"box_L1_8x8_01.txt"
L2_in=$d_txt"box_L2_62x62_01.txt"
L3_in=$d_txt"box_L3_485x485_01.txt"
L4_in=$d_txt"box_L4_3813x3813_01.txt"
L5_in=$d_txt"box_L5_5000x5000_A1.txt"
L6_in=$d_txt"box_L6_5000x5000_01.txt"

L1_out=$d_csv"data_l1.csv"
L2_out=$d_csv"data_l2.csv"
L3_out=$d_csv"data_l3.csv"
L4_out=$d_csv"data_l4.csv"
L5_out=$d_csv"data_l5.csv"
L6_out=$d_csv"data_l6.csv"

time {

clear;

# Проверка существования файлов
for file in "$L1_in" "$L2_in" "$L3_in" "$L4_in" "$L5_in" "$L6_in"; do
    if [ ! -e "$file" ]; then
        echo "Файл $file не существует."
        exit 1
    fi
done

# Проставление номера строки в список хешей
cat -n $L1_in | awk '{print $1 "," $2}' > $L1_out
cat -n $L2_in | awk '{print $1 "," $2}' > $L2_out
cat -n $L3_in | awk '{print $1 "," $2}' > $L3_out
cat -n $L4_in | awk '{print $1 "," $2}' > $L4_out
cat -n $L5_in | awk '{print $1 "," $2}' > $L5_out
cat -n $L6_in | awk '{print $1 "," $2}' > $L6_out

}

echo "Memory Usage: $(ps -o rss= -p $$) KB"
exit;


#######################
#real    5m37.931s
#user    5m37.701s
#sys     0m53.579s
#Memory Usage:  2624 KB
