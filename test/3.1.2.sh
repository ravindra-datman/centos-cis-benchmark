#!/bin/sh
# ** AUTO GENERATED **

# 3.1.2 - Ensure packet redirect sending is disabled (Scored)
# 3.1.2 "Ensure packet redirect sending is disabled (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.conf.all.send_redirects | grep -E "net.ipv4.conf.all.send_redirects = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.send_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.send_redirects = 0" || return $?
else
        grep "net.ipv4.conf.all.send_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.send_redirects = 0" || return $?
fi

sysctl net.ipv4.conf.default.send_redirects | grep -E "net.ipv4.conf.default.send_redirects = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.send_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.send_redirects = 0" || return $?
else
        grep "net.ipv4.conf.default.send_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.send_redirects = 0" || return $?
fi
}
test_serial_number="3.1.2"
test_name="Ensure packet redirect sending is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
