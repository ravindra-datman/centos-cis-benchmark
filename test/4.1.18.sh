#!/bin/sh
# ** AUTO GENERATED **

# 4.1.18 - Ensure the audit configuration is immutable (Scored)
# 4.1.18 "Ensure the audit configuration is immutable (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep -q "^-e[[:space:]]+2" || return 1
}
test_serial_number="4.1.18"
test_name="Ensure the audit configuration is immutable (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
