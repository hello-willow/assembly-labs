#!/bin/bash

FILE=$1

if [ ! -f bin/${FILE} ]; then
    echo "Cannot find executable file bin/${FILE}"
    exit 2
fi

rm -rf bin/${FILE}*
echo "Deleted build content for bin/${FILE}" 
