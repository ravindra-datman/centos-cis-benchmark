#!/bin/sh
# ** AUTO GENERATED **

# 2.2.4 - Ensure CUPS is not enabled (Scored)
# 2.2.4 "Ensure CUPS is not enabled (Scored)" Yes Server1 Workstation2

exexute(){
systemctl is-enabled cups 2>&1 | grep -E "(disabled|No such file or directory)" || return $?
}
test_serial_number="2.2.4"
test_name="Ensure CUPS is not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation2"
important="Yes"
