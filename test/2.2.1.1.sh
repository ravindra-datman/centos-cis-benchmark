#!/bin/sh
# ** AUTO GENERATED **

# 2.2.1.1 - Ensure time synchronization is in use (Not Scored)
# 2.2.1.1 "Ensure time synchronization is in use (Not Scored)" No Server1 Workstation1

execute(){
rpm -q ntp | grep -E "^ntp-"
app1=$?
rpm -q chrony | grep -E "^chrony-"
app2=$?

if [[ $app1 -eq 1 && $app2 -eq 1 ]]; then
        return 1
fi
}
test_serial_number="2.2.1.1"
test_name="Ensure time synchronization is in use (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
