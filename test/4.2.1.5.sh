#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.5 - Ensure remote rsyslog messages are only accepted on designated log hosts. (Not Scored)
#4.2.1.5 "Ensure remote rsyslog messages are only accepted on designated log hosts. (Not Scored)" No Server1 Workstation1

execute(){
if [[ $(ls -A /etc/rsyslog.d/) ]] ; then
        grep '$ModLoad imtcp' /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep '$ModLoad imtcp' || return 1
        grep '$InputTCPServerRun' /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep '$InputTCPServerRun 514' || return 1
else
        grep '$ModLoad imtcp' /etc/rsyslog.conf  | grep '$ModLoad imtcp' || return 1
        grep '$InputTCPServerRun' /etc/rsyslog.conf | grep '$InputTCPServerRun 514' || return 1
fi
}
test_serial_number="4.2.1.5"
test_name="Ensure remote rsyslog messages are only accepted on designated log hosts. (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
