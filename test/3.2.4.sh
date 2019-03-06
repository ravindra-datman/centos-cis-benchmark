#!/bin/sh
# ** AUTO GENERATED **

# 3.2.4 - Ensure suspicious packets are logged (Scored)
# 3.2.4 "Ensure suspicious packets are logged (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.conf.all.log_martians | grep -E "net.ipv4.conf.all.log_martians = 1"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.log_martians" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.log_martians = 1" || return $?
else
        grep "net.ipv4.conf.all.log_martians" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.log_martians = 1" || return $?
fi

sysctl net.ipv4.conf.default.log_martians | grep -E "net.ipv4.conf.default.log_martians = 1"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.log_martians" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.log_martians = 1" || return $?
else
        grep "net.ipv4.conf.default.log_martians" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.log_martians = 1" || return $?
fi
}
test_serial_number="3.2.4
test_name="Ensure suspicious packets are logged (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
