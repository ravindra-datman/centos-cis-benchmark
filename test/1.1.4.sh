#!/bin/sh
# ** AUTO GENERATED **

# 1.1.4 - Ensure nosuid option set on /tmp partition (Scored)
# 1.1.4 "Ensure nosuid option set on /tmp partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /tmp | grep nosuid || return $?
}
test_serial_number="1.1.4"
test_name="Ensure nosuid option set on /tmp partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

important="No"
