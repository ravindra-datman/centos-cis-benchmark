#!/bin/sh
# ** AUTO GENERATED **

# 1.2.3 - Ensure gpgcheck is globally activated (Scored)
#1.2.3 "Ensure gpgcheck is globally activated (Scored)" Yes Server1 Workstation1

execute(){
if [[ $(ls -A /etc/yum.repos.d/) ]] ; then
        grep ^gpgcheck /etc/yum.conf /etc/yum.repos.d/* | grep -E "gpgcheck=1" || return $?
else
        grep ^gpgcheck /etc/yum.conf | grep -E "gpgcheck=1" || return $?
fi
}
test_serial_number="1.2.3"
test_name="Ensure gpgcheck is globally activated (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
