#!/bin/sh
# ** AUTO GENERATED **

# 1.1.2 - Ensure separate partition exists for /tmp (Scored)
# 1.1.2 "Ensure separate partition exists for /tmp (Scored)" Yes Server2 Workstation2

execute() {
mount | grep /tmp || return $?
}
test_serial_number="1.1.2"
test_name="Ensure separate partition exists for /tmp (Scored)" 
scored="Yes"
server="Server2"
workstation="Workstation2"
important="No"
