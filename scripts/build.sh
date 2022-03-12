#!/bin/bash

FILE=$1
FILENAME="${FILE%.*}"

if [ ! -f src/${FILE} ]; then
    echo "Cannot find assembly file ${X86SRC}/${FILE}"
    exit 2
fi

if [ ! -d ${BIN} ]; then
    mkdir ${BIN}
fi

nasm -f elf32 ${X86SRC}/${FILE} -o ${BIN}/${FILENAME}.o
ld -m elf_i386 ${BIN}/${FILENAME}.o -o ${BIN}/${FILENAME}

echo "Built executable ${BIN}/${FILENAME}"
