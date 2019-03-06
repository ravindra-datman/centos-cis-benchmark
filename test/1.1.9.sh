#!/bin/sh
# ** AUTO GENERATED **

# 1.1.9 - Ensure nosuid option set on /var/tmp partition (Scored)
# 1.1.9 "Ensure nosuid option set on /var/tmp partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /var/tmp | grep nosuid || return $?
}
test_serial_number="1.1.9"
test_name="Ensure nosuid option set on /var/tmp partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
