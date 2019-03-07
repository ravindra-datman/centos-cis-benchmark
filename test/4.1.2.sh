#!/bin/sh
# ** AUTO GENERATED **

# 4.1.2 - Ensure auditd service is enabled (Scored)
#4.1.2 "Ensure auditd service is enabled (Scored)" Yes Server2 Workstation2

execute(){
systemctl is-enabled auditd | grep enabled || return $?
}
test_serial_number="4.1.2"
test_name="Ensure auditd service is enabled (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
