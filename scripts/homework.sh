#!/bin/bash

FILE=$1
LAB="lab$2"

if [ ! -d "homework/${LAB}" ]; then
    mkdir homework/${LAB}
fi

objdump -d -M intel bin/${FILE} > homework/${LAB}/objdump.out
file bin/${FILE} > homework/${LAB}/file.out
strace -o homework/${LAB}/strace.out bin/${FILE} 
hexdump bin/${FILE} > homework/${LAB}/hexdump.out
xxd bin/${FILE} > homework/${LAB}/xxd.out
