#!/bin/sh
# ** AUTO GENERATED **

# 1.1.12 - Ensure separate partition exists for /var/log/audit (Scored)
# 1.1.12 "Ensure separate partition exists for /var/log/audit (Scored)" Yes Server2 Workstation2



execute(){
	mount | grep /var/log/audit || return $?
}
test_serial_number="1.1.12"
test_name="Ensure separate partition exists for /var/log/audit (Scored)"
scored="Yes"
server="Server"
workstation="Workstation2"
