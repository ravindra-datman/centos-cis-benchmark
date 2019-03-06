#!/bin/sh
# ** AUTO GENERATED **

# 1.1.3 - Ensure nodev option set on /tmp partition (Scored)
# 1.1.3 "Ensure nodev option set on /tmp partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /tmp | grep nodev || return $?
}
test_serial_number="1.1.3"
test_name="Ensure nodev option set on /tmp partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

