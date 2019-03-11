#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.4 - Ensure SETroubleshoot is not installed (Scored)
# 1.6.1.4 "Ensure SETroubleshoot is not installed (Scored)" Yes Server2 Workstation2

execute(){
rpm -q setroubleshoot | grep -E "package setroubleshoot is not installed" || return $1
}
test_serial_number="1.6.1.4"
test_name="Ensure SETroubleshoot is not installed (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
