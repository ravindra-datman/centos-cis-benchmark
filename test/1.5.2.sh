#!/bin/sh
# ** AUTO GENERATED **

# 1.5.2 - Ensure XD/NX support is enabled (Not Scored)
# 1.5.2 "Ensure XD/NX support is enabled (Not Scored)" No Server1 Workstation1


execute(){
dmesg | grep NX | grep "NX (Execute Disable) protection: active" || return $1
}
test_serial_number="1.5.2"
test_name="Ensure XD/NX support is enabled (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
