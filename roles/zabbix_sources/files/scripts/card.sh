#!/bin/bash

re()
{
ps aux | grep card | grep -v 'grep' | awk -F '/' '{print $NF}' | awk '{print $NF}'| awk -F '.' '{print $1}' | while read card
do
if [ "$1" == "$card" ];then
echo 1
fi
done
}
if [ "`re $1`x == 1x" ];then
echo 1
else
echo 0
fi
