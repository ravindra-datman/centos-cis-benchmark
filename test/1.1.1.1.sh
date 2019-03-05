#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.1 - Ensure mounting of cramfs filesystems is disabled (Scored)
# 1.1.1.1 "Ensure mounting of cramfs filesystems is disabled (Scored)" Yes Server1 Workstation1



execute(){
modprobe -n -v cramfs 2>&1 | grep -E "(install /bin/true|FATAL: Module cramfs not found.)" || return $?
[[ -z "$(lsmod | grep cramfs)" ]] || return 1
}
 
test_serial_number="1.1.1.1"
test_name="Ensure mounting of cramfs filesystems is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

