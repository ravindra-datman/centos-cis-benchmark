#!/bin/sh
# ** AUTO GENERATED **

# 4.2.3 - Ensure rsyslog or syslog-ng is installed (Scored)
# 4.2.3 "Ensure rsyslog or syslog-ng is installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q rsyslog | grep -E "^rsyslog-"
app1=$?
rpm -q syslog-ng | grep -E "^syslog-ng-"
app2=$?

if [[ $app1 -eq 1 && $app2 -eq 1 ]]; then
        return 1
fi
}
test_serial_number="4.2.3"
test_name="Ensure rsyslog or syslog-ng is installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
