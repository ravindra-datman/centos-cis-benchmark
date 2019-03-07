#!/bin/sh
# ** AUTO GENERATED **

# 5.2.4 - Ensure SSH X11 forwarding is disabled (Scored)
# 5.2.4 "Ensure SSH X11 forwarding is disabled (Scored)" Yes Server1 Workstation1

execute(){
grep "^\s*X11Forwarding" /etc/ssh/sshd_config | grep -q "X11Forwarding\s*no" || return $?
}
test_serial_number="5.2.4"
test_name="Ensure SSH X11 forwarding is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
