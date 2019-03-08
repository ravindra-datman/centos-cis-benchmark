#!/bin/sh
# ** AUTO GENERATED **

# 1.1.14 - Ensure nodev option set on /home partition (Scored)
# 1.1.14 "Ensure nodev option set on /home partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /home | grep nodev || return $?
}
test_serial_number="1.1.14"
test_name="Ensure nodev option set on /home partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="No"
