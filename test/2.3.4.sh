#!/bin/sh
# ** AUTO GENERATED **

# 2.3.4 - Ensure telnet client is not installed (Scored)
#2.3.4 "Ensure telnet client is not installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q telnet | grep -E "package telnet is not installed" || return $1
}
test_serial_number="2.3.4"
test_name="Ensure telnet client is not installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
