#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.3 - Ensure mounting of jffs2 filesystems is disabled (Scored)
# 1.1.1.3 "Ensure mounting of jffs2 filesystems is disabled (Scored)" Yes Server1 Workstation1

execute(){
modprobe -n -v jffs2 2>&1 | grep -E "(install /bin/true|FATAL: Module jffs2 not found.)" || return $?
[[ -z "$(lsmod | grep jffs2)" ]] || return 1
}
test_serial_number="1.1.1.3"
test_name="Ensure mounting of jffs2 filesystems is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"


