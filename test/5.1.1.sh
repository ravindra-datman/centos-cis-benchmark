#!/bin/sh
# ** AUTO GENERATED **

# 5.1.1 - Ensure cron daemon is enabled (Scored)
# 5.1.1 "Ensure cron daemon is enabled (Scored)" Yes Server1 Workstation1

execute(){
systemctl is-enabled crond | grep enabled || return $?
}
test_serial_number="5.1.1"
test_name="Ensure cron daemon is enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
