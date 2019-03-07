#!/bin/sh
# ** AUTO GENERATED **

# 5.2.10 - Ensure SSH PermitUserEnvironment is disabled (Scored)
# 5.2.10 "Ensure SSH PermitUserEnvironment is disabled (Scored)" Yes Server1 Workstation1

execute(){
grep "^\s*PermitUserEnvironment" /etc/ssh/sshd_config | grep -q "PermitUserEnvironment\s*no" || return $?
}
test_serial_number="5.2.10"
test_name="Ensure SSH PermitUserEnvironment is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
