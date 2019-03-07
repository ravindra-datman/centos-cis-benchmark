#!/bin/sh
# ** AUTO GENERATED **

# 4.1.15 - Ensure changes to system administration scope (sudoers) is collected (Scored)
#4.1.15 "Ensure changes to system administration scope (sudoers) is collected (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+scope" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/sudoers" || return 1

#Testing the /etc/audit/rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+scope" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/sudoers" || return 1
}
test_serial_number="4.1.15"
test_name="Ensure changes to system administration scope (sudoers) is collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
