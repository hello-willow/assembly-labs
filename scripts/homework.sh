#!/bin/bash

FILE=$1
LAB="lab$2"

if [ ! -f bin/${FILE} ]; then
    echo "Cannot find executable file bin/${FILE}"
    exit 2
fi

if [ ! -d "homework/${LAB}" ]; then
    mkdir homework/${LAB}
fi

objdump -d -M intel bin/${FILE} > homework/${LAB}/objdump.txt
file bin/${FILE} > homework/${LAB}/file.txt
strace -o homework/${LAB}/strace.txt bin/${FILE} 
hexdump bin/${FILE} > homework/${LAB}/hexdump.txt
xxd bin/${FILE} > homework/${LAB}/xxd.txt

echo "Created analytics files in homework/${LAB} for bin/${FILE}"
