#!/bin/bash

FILE=$1

if [[ -z $FILE ]]; then
    echo "Specify an executable to delete, or run 'make broom' for a clean sweep"
    exit 22
elif [[ ! -f $BIN/$FILE ]]; then
    echo "Can't find executable ${BIN}/${FILE} to delete"
    exit 2
fi

rm -rf ${BIN}/${FILE}*
echo "Deleted all build content for ${BIN}/${FILE}" 
