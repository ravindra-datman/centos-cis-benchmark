#!/bin/sh
# ** AUTO GENERATED **

# 5.1.4 - Ensure permissions on /etc/cron.daily are configured (Scored)
#5.1.4 "Ensure permissions on /etc/cron.daily are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/cron.daily | grep -q "700 0 0$" || return $?
}
test_serial_number="5.1.4"
test_name="Ensure permissions on /etc/cron.daily are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
