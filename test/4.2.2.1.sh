#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.1 - Ensure syslog-ng service is enabled (Scored)
#4.2.2.1 "Ensure syslog-ng service is enabled (Scored)" Yes Server1 Workstation1
 
execute(){
systemctl is-enabled rsyslog | grep enabled || return $?
}
test_serial_number="4.2.2.1"
test_name="Ensure syslog-ng service is enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
