#!/bin/sh
# ** AUTO GENERATED **

# 5.2.1 - Ensure permissions on /etc/ssh/sshd_config are configured (Scored)
#5.2.1 "Ensure permissions on /etc/ssh/sshd_config are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/ssh/sshd_config | grep -q "600 0 0$" || return $?
}
test_serial_number="5.2.1"
test_name="Ensure permissions on /etc/ssh/sshd_config are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
