#!/bin/sh
# ** AUTO GENERATED **

# 4.1.16 - Ensure system administrator actions (sudolog) are collected (Scored)
# 4.1.16 "Ensure system administrator actions (sudolog) are collected (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+actions" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/sudo.log" || return 1

#Testing the /etc/audit/rules.d/audit.rules file.
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+actions" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/sudo.log" || return 1
}
test_serial_number="4.1.16"
test_name="Ensure system administrator actions (sudolog) are collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
