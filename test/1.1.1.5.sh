#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.5 - Ensure mounting of hfsplus filesystems is disabled (Scored)
# 1.1.1.5 "Ensure mounting of hfsplus filesystems is disabled (Scored)" Yes Server1 Workstation1

execute(){
modprobe -n -v hfsplus 2>&1 | grep -E "(install /bin/true|FATAL: Module hfsplus not found.)" || return $?
[[ -z "$(lsmod | grep hfsplus)" ]] || return 1
}
test_serial_number="1.1.1.5"
test_name="Ensure mounting of hfsplus filesystems is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

