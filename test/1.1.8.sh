#!/bin/sh
# ** AUTO GENERATED **

# 1.1.8 - Ensure nodev option set on /var/tmp partition (Scored)
# 1.1.8 "Ensure nodev option set on /var/tmp partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /var/tmp | grep nodev || return $?
}
t_serial_number="1.1.8"
test_name="Ensure nodev option set on /var/tmp partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="No"
