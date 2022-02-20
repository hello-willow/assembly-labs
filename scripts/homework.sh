#!/bin/bash

FILE=$1

if [ ! -f bin/${FILE} ]; then
    echo "Cannot find executable file bin/${FILE}"
    exit 2
fi

if [ ! -d "homework/${FILE}" ]; then
    mkdir homework/${FILE}
fi

objdump -d -M intel bin/${FILE} > homework/${FILE}/objdump.txt
file bin/${FILE} > homework/${FILE}/file.txt
strace -o homework/${FILE}/strace.txt bin/${FILE} 
hexdump bin/${FILE} > homework/${FILE}/hexdump.txt
xxd bin/${FILE} > homework/${FILE}/xxd.txt

echo "Created analytics ouput (objdump, file, strace, hexdump, xxd) in homework/${FILE}/ for bin/${FILE}"
