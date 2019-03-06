#!/bin/sh
# ** AUTO GENERATED **

# 2.3.3 - Ensure talk client is not installed (Scored)
# 2.3.3 "Ensure talk client is not installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q talk | grep -E "package talk is not installed" || return $1
}
test_serial_number="2.3.3"
test_name="Ensure talk client is not installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
