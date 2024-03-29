#!/bin/bash

time {

clear;

php src/dbtest.php

}

echo "Memory Usage: $(ps -o rss= -p $$) KB"
exit;
