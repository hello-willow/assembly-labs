#!/bin/bash

FILE=$1

if [ ! -f ${BIN}/${FILE} ]; then
    echo "Cannot find executable file ${BIN}/${FILE}"
    exit 2
fi

exec objdump -d -M intel ${BIN}/${FILE}
