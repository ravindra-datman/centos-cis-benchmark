#!/bin/sh
# ** AUTO GENERATED **

# 1.3.1 - Ensure AIDE is installed (Scored)
# 1.3.1 "Ensure AIDE is install:qed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q aide |grep -E "aide-" || return $?
}
test_serial_number="1.3.1"
test_name="Ensure AIDE is install:qed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
