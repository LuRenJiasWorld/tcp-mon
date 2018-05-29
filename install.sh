#!/bin/bash
# Copyright 2018 LuRenJiasWorld
# GitHub: https://github.com/LuRenJiasWorld/tcp-mon
# +-----------------tcp-mon-----------------+
# A Simple TCP Connections Count Monitor

echo -e "***tcp-mon installer***\n"
echo -e "Notice: It will be installed into /usr/local/bin automatically\n"
echo -e "For Modification, you can read https://github.com/LuRenJiasWorld/tcp-mon for detail\n"
echo -n "Do you want tcp-mon to be install to /usr/local/bin? You can type tcpmon at any directory without type in the full path.[Y/N]" 
read answer

if [ $answer == "Y" ] 
then
    cd /usr/local/bin/
    wget https://raw.githubusercontent.com/LuRenJiasWorld/tcp-mon/master/tcpmon.sh
    mv tcpmon.sh tcpmon
    chmod +x tcpmon
    echo "Installation Complete! You can type tcpmon now and enjoy it!"
else
    echo "OK, Installation interrupt."
fi
