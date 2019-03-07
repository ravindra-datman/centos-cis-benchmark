#!/bin/sh
# ** AUTO GENERATED **

# 3.6.2 - Ensure default deny firewall policy (Scored)
#3.6.2 "Ensure default deny firewall policy (Scored)" Yes Server1 Workstation1

execute(){
iptables -L | egrep "Chain[[:space:]]+INPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || return 1
iptables -L | egrep "Chain[[:space:]]+FORWARD[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || return 1
iptables -L | egrep "Chain[[:space:]]+OUTPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || return 1
}
test_serial_number="3.6.2"
test_name="Ensure default deny firewall policy (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
