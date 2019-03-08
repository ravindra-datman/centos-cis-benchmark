#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.1 - Ensure message of the day is configured properly (Scored)
# 1.7.1.1 "Ensure message of the day is configured properly (Scored)" Yes Server1 Workstation1

execute(){
out=$(egrep '(\\v|\\r|\\m|\\s)' /etc/motd)
[[ -z "${out}" ]] || return 1
}
test_serial_number="1.7.1.1"
test_name="Ensure message of the day is configured properly (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
