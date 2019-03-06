#!/bin/sh
# ** AUTO GENERATED **

# 2.1.4 - Ensure echo services are not enabled (Scored)
# 2.1.4 "Ensure echo services are not enabled (Scored)" Yes Server1 Workstation1


execute(){
out=$(chkconfig --list | grep -E "^(echo-dgram|echo-stream)\s" |grep ":on")
[[ -z "${out}" ]] || return 1
}
test_serial_number="2.1.4"
test_name="Ensure echo services are not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
