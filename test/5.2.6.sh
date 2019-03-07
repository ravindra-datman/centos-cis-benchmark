#!/bin/sh
# ** AUTO GENERATED **

# 5.2.6 - Ensure SSH IgnoreRhosts is enabled (Scored)
# 5.2.6 "Ensure SSH IgnoreRhosts is enabled (Scored)" Yes Server1 Workstation1
 
execute(){
grep "^\s*IgnoreRhosts" /etc/ssh/sshd_config | grep -q "IgnoreRhosts\s*yes" || return $?
}
test_serial_number="5.2.6"
test_name="Ensure SSH IgnoreRhosts is enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
