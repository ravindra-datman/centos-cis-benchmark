#!/bin/sh
# ** AUTO GENERATED **

# 1.1.11 - Ensure separate partition exists for /var/log (Scored)
# 1.1.11 "Ensure separate partition exists for /var/log (Scored)" Yes Server2 Workstation2


execute(){
mount | grep /var/log || exit $?
}
t_serial_number="1.1.11"
test_name="Ensure separate partition exists for /var/log (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"

