#!/bin/sh
# ** AUTO GENERATED **

# 1.1.10 
#Ensure noexec option set on /var/tmp partition (Scored)
# 1.1.10 "Ensure noexec option set on /var/tmp partition (Scored)" Yes Server1 Workstation1
execute()
{
	mount | grep /var/tmp | grep noexec || exit $?
}
test_serial_number="1.1.10"
test_name="Ensure noexec option set on /var/tmp partition (Scored)"
scored="yes"
server="Server1"
workstation="workstation1"
