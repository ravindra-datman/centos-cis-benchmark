#!/bin/sh
# ** AUTO GENERATED **

# 4.3 - Ensure logrotate is configured (Not Scored)
# 4.3 "Ensure logrotate is configured (Not Scored)" No Server1 Workstation1

execute(){
cat /etc/logrotate.conf | tr '\n' '\r' | sed -e 's/{.*}//g' | tr '\r' '\n' | grep -v "^\s*#" | grep "maxage" || return $?
}
test_serial_number="4.3"
test_name="Ensure logrotate is configured (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
