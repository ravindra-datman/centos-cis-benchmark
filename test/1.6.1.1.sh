#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.1 - Ensure SELinux is not disabled in bootloader configuration (Scored)
# 1.6.1.1 "Ensure SELinux is not disabled in bootloader configuration (Scored)" Yes Server2 Workstation2

execute(){
out=$(grep "^\s*kernel" /boot/grub2/grub.cfg | grep -E "selinux=0|enforcing=0")
[[ -z "${out}" ]] || return 1
}
test_serial_number="1.6.1.1"
test_name="Ensure SELinux is not disabled in bootloader configuration (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
