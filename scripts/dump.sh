#!/bin/bash

FILE=$1

if [ ! -f bin/${FILE} ]; then
    echo "Cannot find executable file bin/${FILE}"
    exit 2
fi

exec objdump -d -M intel bin/${FILE}
