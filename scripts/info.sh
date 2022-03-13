#!/bin/bash

FILE=$1

if [ ! -f ${BIN}/${FILE} ]; then
    echo "Cannot find executable file ${BIN}/${FILE}"
    exit 2
fi

if [ ! -d "analysis/${FILE}" ]; then
    mkdir -p analysis/${FILE}
fi

objdump -d -M intel ${BIN}/${FILE} > analysis/${FILE}/objdump.txt
file ${BIN}/${FILE} > analysis/${FILE}/file.txt
strace -o analysis/${FILE}/strace.txt ${BIN}/${FILE} 
hexdump ${BIN}/${FILE} > analysis/${FILE}/hexdump.txt
xxd ${BIN}/${FILE} > analysis/${FILE}/xxd.txt

echo "Saved analysis output (objdump, file, strace, hexdump, xxd) in analysis/${FILE}/ for ${BIN}/${FILE}"
