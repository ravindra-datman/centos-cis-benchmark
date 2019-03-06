#!/bin/sh
# ** AUTO GENERATED **

# 3.2.6 - Ensure bogus ICMP responses are ignored (Scored)
#"Ensure bogus ICMP responses are ignored (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.icmp_ignore_bogus_error_responses | grep -E "net.ipv4.icmp_ignore_bogus_error_responses = 1"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.icmp_ignore_bogus_error_responses = 1" || return $?
else
        grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf | grep -E "net.ipv4.icmp_ignore_bogus_error_responses = 1" || return $?
fi
}
test_serial_number="3.2.6"
test_name="Ensure bogus ICMP responses are ignored (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
