#!/bin/sh
# ** AUTO GENERATED **

# 4.1.1.1 - Ensure audit log storage size is configured (Not Scored)
#4.1.1.1 "Ensure audit log storage size is configured (Not Scored)" No Server2 Workstation2

execute(){
cut -d\# -f1 /etc/audit/auditd.conf | egrep -q "max_log_file[[:space:]]|max_log_file=" || return 1
}
test_serial_number="4.1.1.1"
test_name="Ensure audit log storage size is configured (Not Scored)"
scored="No"
server="Server2"
workstation="Workstation2"
important="No"
