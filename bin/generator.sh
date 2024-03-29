#!/bin/bash

time {

clear;

gen_php="src/generator.php"
d_txt="data/txt/"

## L1-L4

php $gen_php 1 --mix --pb --stat --crc
php $gen_php 2 --mix --stat --crc
php $gen_php 3 --mix --stat --crc
php $gen_php 4 --stat && shuf -o "$d_txt""box_L4_3813x3813_01.txt" "$d_txt""box_L4_3813x3813_01.txt"


## L5

php $gen_php 5 1 & php $gen_php 5 2 & php $gen_php 5 3 & php $gen_php 5 4 & php $gen_php 5 5 --stat & wait
php $gen_php 5 6 & php $gen_php 5 7 & php $gen_php 5 8 & php $gen_php 5 9 & php $gen_php 5 10 --stat & wait
php $gen_php 5 11 & php $gen_php 5 12 & php $gen_php 5 13 & php $gen_php 5 14 & php $gen_php 5 15 --stat & wait
php $gen_php 5 16 & php $gen_php 5 17 & php $gen_php 5 18 & php $gen_php 5 19 & php $gen_php 5 20 --stat & wait
php $gen_php 5 21 & php $gen_php 5 22 & php $gen_php 5 23 & php $gen_php 5 24 & php $gen_php 5 25 --stat & wait
php $gen_php 5 26 & php $gen_php 5 27 & php $gen_php 5 28 & php $gen_php 5 29 & php $gen_php 5 30 --stat & wait
php $gen_php 5 31 & php $gen_php 5 32 & php $gen_php 5 33 & php $gen_php 5 34 & php $gen_php 5 35 --stat & wait
php $gen_php 5 36 & php $gen_php 5 37 --stat & wait
sed -i '/^$/d' "$d_txt""box_L5_5000x5000_37.txt"


cat "$d_txt""box_L5_5000x5000_01.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_01.txt"
cat "$d_txt""box_L5_5000x5000_03.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_03.txt" && \
cat "$d_txt""box_L5_5000x5000_05.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_05.txt" && \
cat "$d_txt""box_L5_5000x5000_07.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_07.txt" && \
cat "$d_txt""box_L5_5000x5000_09.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_09.txt" && \
cat "$d_txt""box_L5_5000x5000_11.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_11.txt" && \
cat "$d_txt""box_L5_5000x5000_13.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_13.txt" && \
cat "$d_txt""box_L5_5000x5000_15.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_15.txt" && \
cat "$d_txt""box_L5_5000x5000_17.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_17.txt" && \
cat "$d_txt""box_L5_5000x5000_19.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_19.txt"

cat "$d_txt""box_L5_5000x5000_21.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_21.txt" && \
cat "$d_txt""box_L5_5000x5000_23.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_23.txt" && \
cat "$d_txt""box_L5_5000x5000_25.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_25.txt" && \
cat "$d_txt""box_L5_5000x5000_27.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_27.txt" && \
cat "$d_txt""box_L5_5000x5000_29.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_29.txt" && \
cat "$d_txt""box_L5_5000x5000_31.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_31.txt" && \
cat "$d_txt""box_L5_5000x5000_33.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_33.txt" && \
cat "$d_txt""box_L5_5000x5000_35.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_35.txt" && \
cat "$d_txt""box_L5_5000x5000_37.txt" >> "$d_txt""box_L5_5000x5000_A3.txt" && rm "$d_txt""box_L5_5000x5000_37.txt"

cat "$d_txt""box_L5_5000x5000_02.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_02.txt"
cat "$d_txt""box_L5_5000x5000_04.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_04.txt" && \
cat "$d_txt""box_L5_5000x5000_06.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_06.txt" && \
cat "$d_txt""box_L5_5000x5000_08.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_08.txt" && \
cat "$d_txt""box_L5_5000x5000_10.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_10.txt" && \
cat "$d_txt""box_L5_5000x5000_12.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_12.txt" && \
cat "$d_txt""box_L5_5000x5000_14.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_14.txt" && \
cat "$d_txt""box_L5_5000x5000_16.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_16.txt" && \
cat "$d_txt""box_L5_5000x5000_18.txt" >> "$d_txt""box_L5_5000x5000_A2.txt" && rm "$d_txt""box_L5_5000x5000_18.txt"

cat "$d_txt""box_L5_5000x5000_20.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_20.txt" && \
cat "$d_txt""box_L5_5000x5000_22.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_22.txt" && \
cat "$d_txt""box_L5_5000x5000_24.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_24.txt" && \
cat "$d_txt""box_L5_5000x5000_26.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_26.txt" && \
cat "$d_txt""box_L5_5000x5000_28.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_28.txt" && \
cat "$d_txt""box_L5_5000x5000_30.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_30.txt" && \
cat "$d_txt""box_L5_5000x5000_32.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_32.txt" && \
cat "$d_txt""box_L5_5000x5000_34.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_34.txt" && \
cat "$d_txt""box_L5_5000x5000_36.txt" >> "$d_txt""box_L5_5000x5000_A4.txt" && rm "$d_txt""box_L5_5000x5000_36.txt"


shuf -o "$d_txt""box_L5_5000x5000_A1.txt" "$d_txt""box_L5_5000x5000_A1.txt" && \
shuf -o "$d_txt""box_L5_5000x5000_A2.txt" "$d_txt""box_L5_5000x5000_A2.txt" && \
shuf -o "$d_txt""box_L5_5000x5000_A3.txt" "$d_txt""box_L5_5000x5000_A3.txt" && \
shuf -o "$d_txt""box_L5_5000x5000_A4.txt" "$d_txt""box_L5_5000x5000_A4.txt" && \

cat "$d_txt""box_L5_5000x5000_A2.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_A2.txt" && \
cat "$d_txt""box_L5_5000x5000_A3.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_A3.txt" && \
cat "$d_txt""box_L5_5000x5000_A4.txt" >> "$d_txt""box_L5_5000x5000_A1.txt" && rm "$d_txt""box_L5_5000x5000_A4.txt"


## L6

php $gen_php 6 1 & php $gen_php 6 2 & php $gen_php 6 3 & php $gen_php 6 4 --stat & wait
sed -i '/^$/d' "$d_txt""box_L6_5000x5000_04.txt"

cat "$d_txt""box_L6_5000x5000_02.txt" >> "$d_txt""box_L6_5000x5000_01.txt" && rm "$d_txt""box_L6_5000x5000_02.txt"
cat "$d_txt""box_L6_5000x5000_03.txt" >> "$d_txt""box_L6_5000x5000_01.txt" && rm "$d_txt""box_L6_5000x5000_03.txt"
cat "$d_txt""box_L6_5000x5000_04.txt" >> "$d_txt""box_L6_5000x5000_01.txt" && rm "$d_txt""box_L6_5000x5000_04.txt"

shuf -o "$d_txt""box_L6_5000x5000_01.txt" "$d_txt""box_L6_5000x5000_01.txt"

}

echo "Memory Usage: $(ps -o rss= -p $$) KB"
exit;


#######################
#real    17m51.876s
#user    59m40.971s
#sys     0m54.676s
#Memory Usage:  2440 KB
