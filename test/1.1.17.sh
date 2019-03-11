#!/bin/sh
# ** AUTO GENERATED **

# 1.1.17 - Ensure noexec option set on /dev/shm partition (Scored)
# 1.1.17 "Ensure noexec option set on /dev/shm partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /dev/shm | grep noexec || return $?
}
test_serial_number="1.1.17"
test_name="Ensure noexec option set on /dev/shm partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
