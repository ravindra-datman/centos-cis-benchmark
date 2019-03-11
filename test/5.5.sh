#!/bin/sh
# ** AUTO GENERATED **

# 5.5 - Ensure root login is restricted to system console (Not Scored)
# 5.5 "Ensure root login is restricted to system console (Not Scored)" No Server1 Workstation1

execute(){
cat /etc/securetty

return 1
}
test_serial_number="5.5"
test_name="Ensure root login is restricted to system console (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
