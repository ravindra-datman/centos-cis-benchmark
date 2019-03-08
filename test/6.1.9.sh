#!/bin/sh
# ** AUTO GENERATED **

# 6.1.9 - Ensure permissions on /etc/gshadow- are configured (Scored)
# 6.1.9 "Ensure permissions on /etc/gshadow- are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/gshadow- | grep -q "^0 0 0$" || return $?
}
test_serial_number="6.1.9"
test_name="Ensure permissions on /etc/gshadow- are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
