#!/bin/sh
# ** AUTO GENERATED **

# 2.2.2 - Ensure X Window System is not installed (Scored)
#2.2.2 "Ensure X Window System is not installed (Scored)" Yes Server1 Workstation2

execute(){
out=$(rpm -qa xorg-x11*)
[[ -z "${out}" ]] || return 1
}
test_serial_number="2.2.2"
test_name="Ensure X Window System is not installed (Scored)"
scored="Yes"
server="server1"
workstation="Workstation2"
important="Yes"
