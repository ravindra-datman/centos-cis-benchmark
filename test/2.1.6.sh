#!/bin/sh
# ** AUTO GENERATED **

# 2.1.6 - Ensure tftp server is not enabled (Scored)
#2.1.6 "Ensure tftp server is not enabled (Scored)" Yes Server1 Workstation1

execute(){
out=$(chkconfig --list | grep -E "^(tftp)\s" |grep ":on")
[[ -z "${out}" ]] || return 1
}
test_serial_number="2.1.6"
test_name="Ensure tftp server is not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
