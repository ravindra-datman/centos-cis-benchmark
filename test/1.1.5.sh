#!/bin/sh
# ** AUTO GENERATED **

# 1.1.5 - Ensure noexec option set on /tmp partition (Scored)
# 1.1.5 "Ensure noexec option set on /tmp partition (Scored)" Yes Server1 Workstation1

execute(){
mount | grep /tmp | grep noexec || return $?
}
test_serial_number="1.1.5"
test_name="Ensure noexec option set on /tmp partition (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
