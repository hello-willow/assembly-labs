#!/bin/bash

FILE=$1
FILENAME="${FILE%.*}"
LINKER=$2

if [ ! -f c-examples/${FILE} ]; then
    echo "Cannot find C source file c-examples/${FILE}"
    exit 2
fi

if [ ! -d ${BIN} ]; then
    mkdir ${BIN}
fi

if [ ${LINKER} = "static" ]; then
    FILENAME=${FILENAME}_static
    gcc -static ${CSRC}/${FILE} -o ${BIN}/${FILENAME}
else
    gcc ${CSRC}/${FILE} -o ${BIN}/${FILENAME}
fi

echo "Built executable bin/${FILENAME}"
