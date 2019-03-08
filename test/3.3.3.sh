#!/bin/sh
# ** AUTO GENERATED **

# 3.3.3 - Ensure IPv6 is disabled (Not Scored)
#3.3.3 "Ensure IPv6 is disabled (Not Scored)" No Server1 Workstation1

execute(){
grep "^\s*linux" /boot/grub2/grub.cfg | grep -E "ipv6.disable\s*=\s*1" || return $?
}
test_serial_number="3.3.3"
test_name="Ensure IPv6 is disabled (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
