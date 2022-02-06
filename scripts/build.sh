#!/bin/bash

FILE=$1
FILENAME="${FILE%.*}"

if [ ! -d "bin" ]; then
    mkdir bin
fi

nasm -f elfX32 src/${FILE} -o bin/${FILENAME}.o
ld -m elf32_x86_64 bin/${FILENAME}.o -o bin/${FILENAME}

echo "Built executable bin/${FILENAME}"
