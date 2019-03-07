#!/bin/sh
# ** AUTO GENERATED **

# 5.1.2 - Ensure permissions on /etc/crontab are configured (Scored)
# 5.1.2 "Ensure permissions on /etc/crontab are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/crontab | grep -q "600 0 0$" || return $?
}
test_serial_number="5.1.2"
test_name="Ensure permissions on /etc/crontab are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
