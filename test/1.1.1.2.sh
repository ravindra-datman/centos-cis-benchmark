#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.2 - Ensure mounting of freevxfs filesystems is disabled (Scored)
# 1.1.1.2 "Ensure mounting of freevxfs filesystems is disabled (Scored)" Yes Server1 Workstation1



execute(){
modprobe -n -v freevxfs 2>&1 | grep -E "(install /bin/true|FATAL: Module freevxfs not found.)" || return $?
[[ -z "$(lsmod | grep freevxfs)" ]] || return 1
}
test_serial_number="1.1.1.2"
test_name="Ensure mounting of freevxfs filesystems is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

