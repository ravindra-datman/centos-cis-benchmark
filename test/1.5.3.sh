#!/bin/sh
# ** AUTO GENERATED **

# 1.5.3 - Ensure address space layout randomization (ASLR) is enabled (Scored)
#1.5.3 "Ensure address space layout randomization (ASLR) is enabled (Scored)" Yes Server1 Workstation1

execute(){
sysctl kernel.randomize_va_space | grep -E "kernel.randomize_va_space = 2"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "kernel.randomize_va_space" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "kernel.randomize_va_space = 2" || return $?
else
        grep "kernel.randomize_va_space" /etc/sysctl.conf | grep -E "kernel.randomize_va_space = 2" || return $?
fi
}
test_serial_number="1.5.3"
test_name="Ensure address space layout randomization (ASLR) is enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
