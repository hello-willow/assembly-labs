#!/bin/bash

FILE=$1

if [ ! -f bin/${FILE} ]; then
    echo "Cannot find executable file bin/${FILE}"
    exit 2
fi

if [ ! -d "analysis/${FILE}" ]; then
    mkdir analysis/${FILE}
fi

objdump -d -M intel bin/${FILE} > analysis/${FILE}/objdump.txt
file bin/${FILE} > analysis/${FILE}/file.txt
strace -o analysis/${FILE}/strace.txt bin/${FILE} 
hexdump bin/${FILE} > analysis/${FILE}/hexdump.txt
xxd bin/${FILE} > analysis/${FILE}/xxd.txt

echo "Saved analysis output (objdump, file, strace, hexdump, xxd) in analysis/${FILE}/ for bin/${FILE}"
