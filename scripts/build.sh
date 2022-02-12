#!/bin/bash

FILE=$1
FILENAME="${FILE%.*}"

if [ ! -f src/${FILE} ]; then
    echo "Cannot find assembly file src/${FILE}"
    exit 2
fi

if [ ! -d "bin" ]; then
    mkdir bin
fi

nasm -f elf32 src/${FILE} -o bin/${FILENAME}.o
ld -m elf_i386 bin/${FILENAME}.o -o bin/${FILENAME}

echo "Built executable bin/${FILENAME}"
