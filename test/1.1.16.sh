#!/bin/sh
# ** AUTO GENERATED **

# 1.1.16 - Ensure nosuid option set on /dev/shm partition (Scored)
# 1.1.16 "Ensure nosuid option set on /dev/shm partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /dev/shm | grep nosuid || return $?
}
test_serial_number="1.1.16"
test_name="Ensure nosuid option set on /dev/shm partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
