#!/bin/sh
# ** AUTO GENERATED **

# 6.1.1 - Audit system file permissions (Not Scored)
#6.1.1 "Audit system file permissions (Not Scored)" No Server2 Workstation2

execute(){
rpm -Va --nomtime --nosize --nomd5 --nolinkto || return $?
}
test_serial_number="6.1.1"
test_name="Audit system file permissions (Not Scored)"
scored="No"
server="Server2"
workstation="Workstation2"
important="No"
