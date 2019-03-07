#!/bin/sh
# ** AUTO GENERATED **

# 5.2.3 - Ensure SSH LogLevel is set to INFO (Scored)
# 5.2.3 "Ensure SSH LogLevel is set to INFO (Scored)" Yes Server1 Workstation1

execute(){
grep "^\s*LogLevel" /etc/ssh/sshd_config | grep -q "LogLevel\s*INFO" || return $?
}
test_serial_number="5.2.3"
test_name="Ensure SSH LogLevel is set to INFO (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
