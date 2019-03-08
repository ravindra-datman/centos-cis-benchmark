#!/bin/sh
# ** AUTO GENERATED **

# 3.2.1 - Ensure source routed packets are not accepted (Scored)
#3.2.1 "Ensure source routed packets are not accepted (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.conf.all.accept_source_route | grep -E "net.ipv4.conf.all.accept_source_route = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.accept_source_route = 0" || return $?
else
        grep "net.ipv4.conf.all.accept_source_route" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.accept_source_route = 0" || return $?
fi

sysctl net.ipv4.conf.default.accept_source_route | grep -E "net.ipv4.conf.default.accept_source_route = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.accept_source_route" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.accept_source_route = 0" || return $?
else
        grep "net.ipv4.conf.default.accept_source_route" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.accept_source_route = 0" || return $?
fi
}
test_serial_number="3.2.1"
test_name="Ensure source routed packets are not accepted (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
