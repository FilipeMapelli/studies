#!/usr/bin/env bash

wget http://www.tldp.org/LDP/intro-linux/html/intro-linux.html -O ~/workspace/ep-exercicios/m1/e2/download.txt


X=$(sed 's/Linux\b/Linux\n/g' ~/workspace/ep-exercicios/m1/e2/download.txt | grep Linux | wc -l)
Y=$(sed 's/linux\b/linux\n/g' ~/workspace/ep-exercicios/m1/e2/download.txt | grep linux | wc -l)
Z=$(sed 's/linux\b/linux\n/gi' ~/workspace/ep-exercicios/m1/e2/download.txt | grep -i linux | wc -l)

echo Linux: $X
echo linux: $Y
echo "linux (case-insensitive): $Z"

 


