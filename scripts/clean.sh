#!/bin/bash

FILE=$1

rm -rf bin/${FILE}*
echo "Deleted build content for bin/${FILE}" 
