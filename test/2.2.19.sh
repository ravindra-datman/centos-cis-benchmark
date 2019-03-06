#!/bin/sh
# ** AUTO GENERATED **

# 2.2.19 - Ensure tftp server is not enabled (Scored)
#2.2.19 "Ensure tftp server is not enabled (Scored)" Yes Server1 Workstation1
 
execute(){
systemctl is-enabled tftp.socket 2>&1 | grep -E "(disabled|No such file or directory)" || return $?
}
test_serial_number="2.2.19"
test_name="Ensure tftp server is not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
