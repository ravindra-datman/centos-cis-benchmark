#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.5 - Ensure remote rsyslog messages are only accepted on designated log hosts. (Not Scored)

if [[ $(ls -A /etc/rsyslog.d/) ]] ; then
        grep '$ModLoad imtcp' /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep '$ModLoad imtcp' || return 1
        grep '$InputTCPServerRun' /etc/rsyslog.conf /etc/rsyslog.d/*.conf | grep '$InputTCPServerRun 514' || return 1
else
        grep '$ModLoad imtcp' /etc/rsyslog.conf  | grep '$ModLoad imtcp' || return 1
        grep '$InputTCPServerRun' /etc/rsyslog.conf | grep '$InputTCPServerRun 514' || return 1
fi
