#!/bin/bash

ps aux | grep lts | grep async | awk '{print $11}' | cut -f2 -d_ | grep $1 | wc -l
