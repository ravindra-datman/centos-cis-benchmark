#!/bin/sh
# ** AUTO GENERATED **

# 4.1.1.3 - Ensure audit logs are not automatically deleted (Scored)
# 4.1.1.3 "Ensure audit logs are not automatically deleted (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f2 /etc/audit/auditd.conf | grep 'max_log_file_action' | cut -d= -f2 | tr -d '[[:space:]]' | grep -q 'keep_logs' || return 1
}
test_serial_number="4.1.1.3"
test_name="Ensure audit logs are not automatically deleted (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
