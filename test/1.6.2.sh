#!/bin/sh
# ** AUTO GENERATED **

# 1.6.2 - Ensure SELinux is installed (Scored)
#1.6.2 "Ensure SELinux is installed (Scored)" Yes Server2 Workstation2

execute(){
rpm -q libselinux |grep -E "libselinux-" || return $?
}
test_serial_number="1.6.2"
test_name="Ensure SELinux is installed (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
