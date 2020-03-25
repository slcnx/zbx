#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export  PATH 
check_agentd()
{
num=`ps -e | grep zabbix_agentd | wc -l`
if [ $num -lt 6  ];then
echo "Stop zabbix_agentd"
/etc/init.d/zabbix_agentd stop
pkill zabbix_agentd
echo "Stop zabbix_agentd OK"
sleep 5
pkill zabbix_agentd
echo "start zabbix_agentd"
/etc/init.d/zabbix_agentd start
fi
}

agentd()
{
/etc/init.d/zabbix_agentd stop
pkill zabbix_agentd
echo "OK"
sleep 5
pkill zabbix_agentd
/etc/init.d/zabbix_agentd start
}

salt()
{
if test `ps -e | grep salt | wc -l` = 0 ;then
/etc/init.d/salt-minion start
fi
}
if test $# = 1 ;then

if test $1 = "check_agentd" ;then
check_agentd
fi


if test $1 = "agentd" ;then
agentd
fi

if test $1 = "salt" ;then
salt
fi

fi
