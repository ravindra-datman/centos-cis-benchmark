#!/bin/sh
# ** AUTO GENERATED **

# 3.6.1 - Ensure iptables is installed (Scored)
# 3.6.1 "Ensure iptables is installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q iptables |grep -E "iptables-" || return $?
}
test_serial_number="3.6.1"
test_name="Ensure iptables is installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
