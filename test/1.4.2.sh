#!/bin/sh
# ** AUTO GENERATED **

# 1.4.2 - Ensure bootloader password is set (Scored)
# 1.4.2 "Ensure bootloader password is set (Scored)" Yes Server1 Workstation1

execute(){
grep "^GRUB2_PASSWORD" /boot/grub2/grub.cfg || return $?
}
test_serial_number="1.4.2"
test_name="Ensure bootloader password is set (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
