#!/bin/sh
# ** AUTO GENERATED **

# 1.1.13 - Ensure separate partition exists for /home (Scored)
# 1.1.13 "Ensure separate partition exists for /home (Scored)" Yes Server2 Workstation2


execute(){
mount | grep /home || return $?
}
test_serial_number="1.1.13"
test_name="Ensure separate partition exists for /home (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="No"
