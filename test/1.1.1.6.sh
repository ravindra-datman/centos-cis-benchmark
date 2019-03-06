#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.6 - Ensure mounting of squashfs filesystems is disabled (Scored)
# 1.1.1.6 "Ensure mounting of squashfs filesystems is disabled (Scored)" Yes Server1 Workstation1


execute(){
modprobe -n -v squashfs 2>&1 | grep -E "(install /bin/true|FATAL: Module squashfs not found.)" || return $?
[[ -z "$(lsmod | grep squashfs)" ]] || return 1
}
test_serial_number="1.1.1.6"
test_name="1.1.1.6 - Ensure mounting of squashfs filesystems is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

