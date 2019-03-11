#!/bin/sh
# ** AUTO GENERATED **

# 1.4.4 - Ensure interactive boot is not enabled (Scored)

execute(){
grep ^PROMPT=no /etc/sysconfig/init || return $1
}
test_serial_number="1.4.4"
test_name="Ensure interactive boot is not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
