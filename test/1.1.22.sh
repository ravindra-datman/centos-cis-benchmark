#!/bin/sh
# ** AUTO GENERATED **

# 1.1.22 - Disable Automounting (Scored)
# 1.1.22 "Disable Automounting (Scored)" Yes Server1 Workstation2

execute(){
systemctl is-enabled autofs 2>&1 | grep -E "(disabled|No such file or directory)" || return $?
}
test_serial_number="1.1.22"
test_name="Disable Automounting (Scored)"
scored="Yes"
server="Server1"
workstation= "Workstation2"
