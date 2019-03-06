#!/bin/sh
# ** AUTO GENERATED **

# 3.4.1 - Ensure TCP Wrappers is installed (Scored)
#3.4.1 "Ensure TCP Wrappers is installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q tcp_wrappers |grep -E "tcp_wrappers-" || return $?
rpm -q tcp_wrappers-libs |grep -E "tcp_wrappers-libs-" || return $?
}
test_serial_number="3.4.1"
test_name="Ensure TCP Wrappers is installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
