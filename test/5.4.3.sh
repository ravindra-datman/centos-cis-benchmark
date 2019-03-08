#!/bin/sh
# ** AUTO GENERATED **

# 5.4.3 - Ensure default group for the root account is GID 0 (Scored)
#5.4.3 "Ensure default group for the root account is GID 0 (Scored)" Yes Server1 Workstation1

execute(){
grep "^root:" /etc/passwd | cut -f4 -d: | grep -qE "^0$" || return $?
}
test_serial_number="5.4.3"
test_name="Ensure default group for the root account is GID 0 (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
