#!/bin/sh
# ** AUTO GENERATED **

# 3.3.2 - Ensure IPv6 redirects are not accepted (Not Scored)
# 3.3.2 "Ensure IPv6 redirects are not accepted (Not Scored)" No Server1 Workstation1

execute(){
sysctl net.ipv6.conf.all.accept_redirects | grep -E "net.ipv6.conf.all.accept_redirects = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv6.conf.all.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv6.conf.all.accept_redirects = 0" || return $?
else
        grep "net.ipv6.conf.all.accept_redirects" /etc/sysctl.conf | grep -E "net.ipv6.conf.all.accept_redirects = 0" || return $?
fi

sysctl net.ipv6.conf.default.accept_redirects | grep -E "net.ipv6.conf.default.accept_redirects = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv6.conf.default.accept_redirects" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv6.conf.default.accept_redirects = 0" || return $?
else
        grep "net.ipv6.conf.default.accept_redirects" /etc/sysctl.conf | grep -E "net.ipv6.conf.default.accept_redirects = 0" || return $?
fi
}
test_serial_number="3.3.2"
test_name="Ensure IPv6 redirects are not accepted (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
