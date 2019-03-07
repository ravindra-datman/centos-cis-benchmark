#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.5 - Ensure remote syslog-ng messages are only accepted on designated log hosts (Not Scored)
# 4.2.2.5 "Ensure remote syslog-ng messages are only accepted on designated log hosts (Not Scored)" No Server1 Workstation1

execute(){
grep -E 'source net{ tcp\(\); };' /etc/syslog-ng/syslog-ng.conf || return 1
grep -E 'destination remote { file\(\"\/var\/log\/remote\/\${FULLHOST}-log\"\); };' /etc/syslog-ng/syslog-ng.conf || return 1
grep -E 'log { source\(net\); destination\(remote\); };' /etc/syslog-ng/syslog-ng.conf || return 1
}
test_serial_number="4.2.2.5"
test_name="Ensure remote syslog-ng messages are only accepted on designated log hosts (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
