#!/bin/bash
# Copyright 2018 LuRenJiasWorld
# GitHub: https://github.com/LuRenJiasWorld/tcp-mon
# +-----------------tcp-mon-----------------+
# A Simple TCP Connections Count Monitor

while [ true ]; 
do
    /bin/sleep 1
    echo "--`date +%Y-%m-%d--%r`--"
    netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
    echo -e "---------------------------\n"
done
