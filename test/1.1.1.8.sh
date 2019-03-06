#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.8 - Ensure mounting of FAT filesystems is disabled (Scored)
#1.1.1.8 "Ensure mounting of FAT filesystems is disabled (Scored)" Yes Server2 Workstation2

execute(){
modprobe -n -v vfat 2>&1 | grep -E "(install /bin/true|FATAL: Module vfat not found.)" || return $?
[[ -z "$(lsmod | grep vfat)" ]] || return 1
}
test_serial_number="1.1.1.8"
test_name="Ensure mounting of FAT filesystems is disabled (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"

