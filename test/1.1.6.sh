#!/bin/sh
# ** AUTO GENERATED **

# 1.1.6 - Ensure separate partition exists for /var (Scored)
# 1.1.6 "Ensure separate partition exists for /var (Scored)" Yes Server2 Workstation2

execute(){
mount | grep /var || return $?
}
test_serial_number="1.1.6"
test_name="Ensure separate partition exists for /var (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="No"
