#!/bin/sh
# ** AUTO GENERATED **

# 1.4.3 - Ensure authentication required for single user mode (Scored)
# 1.4.3 "Ensure authentication required for single user mode (Scored)" Yes Server1 Workstation1

execute(){
grep /sbin/sulogin /usr/lib/systemd/system/rescue.service | grep -E 'ExecStart=-/bin/sh -c "(/usr)?/sbin/sulogin; /usr/bin/systemctl --fail --no-block default"' || return $?

grep /sbin/sulogin /usr/lib/systemd/system/emergency.service | grep -E 'ExecStart=-/bin/sh -c "(/usr)?/sbin/sulogin; /usr/bin/systemctl --fail --no-block default"' || return $?
}
test_serial_number="1.4.3"
test_name="Ensure authentication required for single user mode (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
