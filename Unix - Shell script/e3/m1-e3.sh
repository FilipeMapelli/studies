#!/usr/bin/env bash

wget $1 -O ~/workspace/ep-exercicios/m1/e3/download.txt

echo $2: $(sed "s/$2/$2\n/gi" ~/workspace/ep-exercicios/m1/e3/download.txt | grep -i $2 | wc -l)
