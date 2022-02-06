#!/bin/bash

FILE=$1

exec objdump -d -M intel bin/${FILE}
