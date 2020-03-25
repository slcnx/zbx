#!/bin/sh

#ps -e | grep $1 | wc -l
ps -ef | grep $1 | grep -v grep | grep -v $0 |wc -l
