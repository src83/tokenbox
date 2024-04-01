#!/bin/bash

time {

clear;

d_csv="data/csv/"

L1=$d_csv"data_l1.csv"
L2=$d_csv"data_l2.csv"
L3=$d_csv"data_l3.csv"
L4=$d_csv"data_l4.csv"
L5=$d_csv"data_l5.csv"
L6=$d_csv"data_l6.csv"

host=tokenbox_ch
user=user
pass=password
dbname=tokenbox

#----------------------------------------------------

# Проверка существования файлов
for file in "$L1" "$L2" "$L3" "$L4" "$L5" "$L6"; do
    if [ ! -e "$file" ]; then
        echo "Файл $file не существует."
        exit 1
    fi
done

echo "Up 1..."
query="INSERT INTO hash_pool_v1 FORMAT CSV"
cat $L1 | clickhouse-client --host=$host -u $user --password=$pass --database=$dbname --query="$query"

echo "Up 2..."
query="INSERT INTO hash_pool_v2 FORMAT CSV"
cat $L2 | clickhouse-client --host=$host -u $user --password=$pass --database=$dbname --query="$query"

echo "Up 3..."
query="INSERT INTO hash_pool_v3 FORMAT CSV"
cat $L3 | clickhouse-client --host=$host -u $user --password=$pass --database=$dbname --query="$query"

echo "Up 4..."
query="INSERT INTO hash_pool_v4 FORMAT CSV"
cat $L4 | clickhouse-client --host=$host -u $user --password=$pass --database=$dbname --query="$query"

echo "Up 5..."
query="INSERT INTO hash_pool_v5 FORMAT CSV"
cat $L5 | clickhouse-client --host=$host -u $user --password=$pass --database=$dbname --query="$query"

echo "Up 6..."
query="INSERT INTO hash_pool_v6 FORMAT CSV"
cat $L6 | clickhouse-client --host=$host -u $user --password=$pass --database=$dbname --query="$query"

#----------------------------------------------------

}

echo "Memory Usage: $(ps -o rss= -p $$) KB"
exit;

#######################
#real    2m33.563s
#user    1m47.210s
#sys     0m43.577s
#Memory Usage:  2732 KB
