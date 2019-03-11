#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.3 - Ensure SELinux policy is configured (Scored)
# 1.6.1.3 "Ensure SELinux policy is configured (Scored)" Yes Server2 Workstation2

execute(){
grep SELINUXTYPE=targeted /etc/selinux/config || return $1

sestatus | grep -E "Loaded policy name:\s*targeted" || return $1
}
test_serial_number="1.6.1.3"
test_name="Ensure SELinux policy is configured (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
