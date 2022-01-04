#!/bin/bash

computersleep=`/usr/sbin/systemsetup -getcomputersleep | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$computersleep" != "Never" ]; then
	result=`/usr/sbin/systemsetup -setcomputersleep Never`
	/bin/echo $result	
fi

displaysleep=`/usr/sbin/systemsetup -getdisplaysleep | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$displaysleep" != "after 45 minutes" ]; then
	result=`/usr/sbin/systemsetup -setdisplaysleep 45`
	/bin/echo $result
fi

harddisksleep=`/usr/sbin/systemsetup -getharddisksleep | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$harddisksleep" != "Never" ] ; then
	result=`/usr/sbin/systemsetup -setharddisksleep Never`
	/bin/echo $result
fi

wakeonnetworkaccess=`/usr/sbin/systemsetup -getwakeonnetworkaccess | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$wakeonnetworkaccess" != "On" ]; then
	result=`/usr/sbin/systemsetup -setwakeonnetworkaccess on`
	/bin/echo $result
fi

restartpowerfailure=`/usr/sbin/systemsetup -getrestartpowerfailure | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$restartpowerfailure" != "On" ]; then
	result=`/usr/sbin/systemsetup -setrestartpowerfailure on`
	/bin/echo $result
fi

restartfreeze=`/usr/sbin/systemsetup -getrestartfreeze | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$restartfreeze" != "On" ]; then
	result=`/usr/sbin/systemsetup -setrestartfreeze on`
	/bin/echo $result
fi

allowpowerbuttontosleepcomputer=`/usr/sbin/systemsetup -getallowpowerbuttontosleepcomputer | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$allowpowerbuttontosleepcomputer" != "Off" ]; then
	result=`/usr/sbin/systemsetup -setallowpowerbuttontosleepcomputer Off`
	/bin/echo $result
fi

waitforstartupafterpowerfailure=`/usr/sbin/systemsetup -getwaitforstartupafterpowerfailure | /usr/bin/awk -F ': ' '{print $2}'`
if [ "$waitforstartupafterpowerfailure" != "0 seconds" ]; then
	result=`/usr/sbin/systemsetup -setwaitforstartupafterpowerfailure 0`
	/bin/echo $result
fi

exit 0
