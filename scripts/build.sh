#!/bin/bash

FILE=$1

if [ ! -d "bin" ]; then
    mkdir bin
fi

nasm -f elfX32 src/${FILE}.asm -o bin/${FILE}.o
ld -m elf32_x86_64 bin/${FILE}.o -o bin/${FILE}
