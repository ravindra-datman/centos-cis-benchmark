#!/bin/sh
# ** AUTO GENERATED **

# 3.6.3 - Ensure loopback traffic is configured (Scored)
#3.6.3 "Ensure loopback traffic is configured (Scored)" Yes Server1 Workstation1

execute(){
accept="ACCEPT[[:space:]]+all[[:space:]]+--[[:space:]]+lo[[:space:]]+\*[[:space:]]+0\.0\.0\.0\/0[[:space:]]+0\.0\.0\.0\/0"
accept2="ACCEPT[[:space:]]+all[[:space:]]+--[[:space:]]+\*[[:space:]]+lo[[:space:]]+0\.0\.0\.0\/0[[:space:]]+0\.0\.0\.0\/0"
drop="DROP[[:space:]]+all[[:space:]]+--[[:space:]]+\*[[:space:]]+\*[[:space:]]+127\.0\.0\.0\/8[[:space:]]+0\.0\.0\.0\/0"
iptables -L INPUT -v -n | egrep -q ${accept} || return 1
iptables -L INPUT -v -n | egrep -q ${drop} || return 1
iptables -L OUTPUT -v -n | egrep -q ${accept2} || return 1
}
test_serial_number="3.6.3"
test_name="Ensure loopback traffic is configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
