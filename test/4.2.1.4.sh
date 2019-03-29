#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.4 - Ensure rsyslog is configured to send logs to a remote log host (Scored)
# 4.2.1.4 "Ensure rsyslog is configured to send logs to a remote log host (Scored)" Yes Server1 Workstation1

execute(){
grep -q "^\*.\*[^I][^I]*@" /etc/rsyslog.d/* /etc/rsyslog.conf 2>/dev/null || return 1
}
test_serial_number="4.2.1.4"
test_name="Ensure rsyslog is configured to send logs to a remote log host (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
