#!/bin/sh
# ** AUTO GENERATED **

# 4.1.1.2 - Ensure system is disabled when audit logs are full (Scored)
# 4.1.1.2 "Ensure system is disabled when audit logs are full (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f2 /etc/audit/auditd.conf | grep 'space_left_action' | cut -d= -f2 | tr -d '[[:space:]]' | grep -q 'email' || return 1
cut -d\# -f2 /etc/audit/auditd.conf | grep 'action_mail_acct' | cut -d= -f2 | tr -d '[[:space:]]' | grep -q 'root' || return 1
cut -d\# -f2 /etc/audit/auditd.conf | grep 'admin_space_left_action' | cut -d= -f2 | tr -d '[[:space:]]' | grep -q 'halt' || return 1
}
test_serial_number="4.1.1.2"
test_name="Ensure system is disabled when audit logs are full (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
