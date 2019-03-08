#!/bin/sh
# ** AUTO GENERATED **

# 5.1.7 - Ensure permissions on /etc/cron.d are configured (Scored)
# 5.1.7 "Ensure permissions on /etc/cron.d are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/cron.d | grep -q "700 0 0$" || return $?
}
test_serial_number="5.1.7"
test_name="Ensure permissions on /etc/cron.d are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
