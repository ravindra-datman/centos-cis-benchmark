#!/bin/sh
# ** AUTO GENERATED **

# 1.1.7 - Ensure separate partition exists for /var/tmp (Scored)
#1.1.7 "Ensure separate partition exists for /var/tmp (Scored)" Yes Server2 Workstation2

execute(){
mount | grep /var/tmp || return $?
}
test_serial_number="1.1.7"
test_name="Ensure separate partition exists for /var/tmp (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="No"
