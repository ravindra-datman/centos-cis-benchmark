#!/bin/sh
# ** AUTO GENERATED **

# 2.1.3 - Ensure discard services are not enabled (Scored)
# 2.1.3 "Ensure discard services are not enabled (Scored)" Yes Server1 Workstation1

execute(){
out=$(chkconfig --list | grep -E "^(discard-dgram|discard-stream)\s" |grep ":on")
[[ -z "${out}" ]] || return 1
}
test_serial_number="2.1.3"
test_name="Ensure discard services are not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
