#!/bin/bash
# Copyright 2018 LuRenJiasWorld
# GitHub: https://github.com/LuRenJiasWorld/tcp-mon
# +-----------------tcp-mon-----------------+
# A Simple TCP Connections Count Monitor

counter=0
while [ true ]; 
do
    /bin/sleep 1
    ((counter++))
    echo -e "-------`date +%Y-%m-%d-%r`-------"
    echo -e "$counter times"
    netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
    echo -e "---------Press ctrl+c to exit---------\n"
done
