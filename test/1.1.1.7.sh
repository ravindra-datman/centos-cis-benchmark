#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.7 - Ensure mounting of udf filesystems is disabled (Scored)
# 1.1.1.7 "Ensure mounting of udf filesystems is disabled (Scored)" Yes Server1 Workstation1

execute(){
modprobe -n -v udf 2>&1 | grep -E "(install /bin/true|FATAL: Module udf not found.)" || return $?
[[ -z "$(lsmod | grep udf)" ]] || return 1
}
test_serial_number="1.1.1.7"
test_name="1.1.1.7 - Ensure mounting of udf filesystems is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

