#!/bin/sh
# ** AUTO GENERATED **

# 3.2.2 - Ensure ICMP redirects are not accepted (Scored)
#3.2.2 "Ensure ICMP redirects are not accepted (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.conf.all.accept_redirects | grep -E "net.ipv4.conf.all.accept_redirects = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.accept_redirects = 0" || return $?
else
        grep "net.ipv4.conf.all.accept_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.accept_redirects = 0" || return $?
fi

sysctl net.ipv4.conf.default.accept_redirects | grep -E "net.ipv4.conf.default.accept_redirects = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.accept_redirects = 0" || return $?
else
        grep "net.ipv4.conf.default.accept_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.accept_redirects = 0" || return $?
fi
}
test_serial_number="3.2.2"
test_name="Ensure ICMP redirects are not accepted (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
