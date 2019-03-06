#!/bin/sh
# ** AUTO GENERATED **

# 3.4.3 - Ensure /etc/hosts.deny is configured (Scored)
#3.4.3 "Ensure /etc/hosts.deny is configured (Scored)" Yes Server1 Workstation1

execute(){
# This is a fairly restrictive check - with this in place, you could lock yourself out if you don't have a proper /etc/hosts.allow setup.  Treat this carefully!

cut -d\# -f1 /etc/hosts.deny | grep -q "ALL[[:space:]]*:[[:space:]]*ALL" || return $?
}
test_serial_number="3.4.3"
test_name="Ensure /etc/hosts.deny is configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
