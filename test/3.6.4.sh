#!/bin/sh
# ** AUTO GENERATED **

# 3.6.4 - Ensure outbound and established connections are configured (Not Scored)
# 3.6.4 "Ensure outbound and established connections are configured (Not Scored)" No Server1 Workstation1

execute(){
iptables -L -v -n

return 1
}
test_serial_number="3.6.4"
test_name="Ensure outbound and established connections are configured (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
