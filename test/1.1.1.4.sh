#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.4 - Ensure mounting of hfs filesystems is disabled (Scored)
# 1.1.1.4 "Ensure mounting of hfs filesystems is disabled (Scored)" Yes Server1 Workstation1

execute(){
modprobe -n -v hfs 2>&1 | grep -E "(install /bin/true|FATAL: Module hfs not found.)" || return $?
[[ -z "$(lsmod | grep hfs)" ]] || return 1
}
test_serial_number="1.1.1.4"
test_name=" Ensure mounting of hfs filesystems is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
