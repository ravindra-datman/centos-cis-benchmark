#!/bin/sh
# ** AUTO GENERATED **

# 1.4.1 - Ensure permissions on bootloader config are configured (Scored)
#  1.4.1 "Ensure permissions on bootloader config are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /boot/grub2/grub.cfg | grep -q "600 0 0$" || return $?
}
test_serial_number="1.4.1"
test_name="Ensure permissions on bootloader config are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
