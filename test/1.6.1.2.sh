#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.2 - Ensure the SELinux state is enforcing (Scored)
#1.6.1.2 "Ensure the SELinux state is enforcing (Scored)" Yes Server2 Workstation2

execute(){
grep SELINUX=enforcing /etc/selinux/config || return $1

sestatus | grep -E "SELinux status:\s*enabled" || return $1
sestatus | grep -E "Current mode:\s*enforcing" || return $1
sestatus | grep -E "Mode from config file:\s*enforcing" || return $1
}
test_serial_number="1.6.1.2"
test_name="Ensure the SELinux state is enforcing (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
