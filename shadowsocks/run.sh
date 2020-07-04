#!/bin/bash
cd `dirname $0`
python_ver=$(ls /usr/bin|grep -e "^python[23]\.[1-9]\+$"|tail -1)
ulimit -n 512000
nohup ${python_ver} server.py a>> /dev/null 2>&1 &

