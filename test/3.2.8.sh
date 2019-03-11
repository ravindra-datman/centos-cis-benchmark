#!/bin/sh
# ** AUTO GENERATED **

# 3.2.8 - Ensure TCP SYN Cookies is enabled (Scored)
# 3.2.8 "Ensure TCP SYN Cookies is enabled (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.tcp_syncookies | grep -E "net.ipv4.tcp_syncookies = 1"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.tcp_syncookies" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.tcp_syncookies = 1" || return $?
else
        grep "net.ipv4.tcp_syncookies" /etc/sysctl.conf | grep -E "net.ipv4.tcp_syncookies = 1" || return $?
fi
}
test_serial_number="3.2.8"
test_name="Ensure TCP SYN Cookies is enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
