#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.2 - Ensure local login warning banner is configured properly (Not Scored)
# 1.7.1.2 "Ensure local login warning banner is configured properly (Not Scored)" No Server1 Workstation1

execute(){
out=$(egrep '(\\v|\\r|\\m|\\s)' /etc/issue)
[[ -z "${out}" ]] || return 1
}
test_serial_number="1.7.1.2"
test_name="Ensure local login warning banner is configured properly (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
