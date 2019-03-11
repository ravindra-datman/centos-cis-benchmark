#!/bin/sh
# ** AUTO GENERATED **

# 1.3.2 - Ensure filesystem integrity is regularly checked (Scored)
# 1.3.2 "Ensure filesystem integrity is regularly checked (Scored)" Yes Server1 Workstation1

execute(){
if [[ $(ls -A /etc/cron.*) ]] ; then
 grep -r aide /etc/cron.* /etc/crontab || return $?
else
 crontab -u root -l | grep aide || return $?
fi
}
test_serial_number="1.3.2"
test_name="Ensure filesystem integrity is regularly checked (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
