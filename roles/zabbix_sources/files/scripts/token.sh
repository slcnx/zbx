#!/bin/bash

if test -e /opt/starview/cdn/hls/cfg/HlsCfgInfo.xml ;then
cat /opt/starview/cdn/hls/cfg/HlsCfgInfo.xml | grep "<AntiStealingLinkFlag>1</AntiStealingLinkFlag>" | wc -l
else
echo 1
fi
