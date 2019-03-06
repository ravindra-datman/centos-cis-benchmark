#!/bin/sh
# ** AUTO GENERATED **

# 3.1.1 - Ensure IP forwarding is disabled (Scored)
# 3.1.1 "Ensure IP forwarding is disabled (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.ip_forward | grep -E "net.ipv4.ip_forward = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.ip_forward" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.ip_forward = 0" || return $?
else
        grep "net.ipv4.ip_forward" /etc/sysctl.conf | grep -E "net.ipv4.ip_forward = 0" || return $?
fi
}
test_serial_number="3.1.1"
test_name="Ensure IP forwarding is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
