#!/bin/sh
# ** AUTO GENERATED **

# 3.6.2 - Ensure default deny firewall policy (Scored)

iptables -L | egrep "Chain[[:space:]]+INPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
iptables -L | egrep "Chain[[:space:]]+FORWARD[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
iptables -L | egrep "Chain[[:space:]]+OUTPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
