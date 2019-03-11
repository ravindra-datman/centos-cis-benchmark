#!/bin/sh
# ** AUTO GENERATED **

# 2.2.15 - Ensure mail transfer agent is configured for local-only mode (Scored)
# 2.2.15 "Ensure mail transfer agent is configured for local-only mode (Scored)" Yes Server1 Workstation1

execute(){
out=$(netstat -an | grep LIST | grep ":25" | awk {'print $4'} | grep -v "127.0.0.1" | grep -v "::1")
[[ -z "${out}" ]] || return 1
}
test_serial_number="2.2.15"
test_name="Ensure mail transfer agent is configured for local-only mode (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
