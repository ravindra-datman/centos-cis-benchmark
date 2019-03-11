#!/bin/sh
# ** AUTO GENERATED **

# 4.1.5 - Ensure events that modify user/group information are collected (Scored)
# 4.1.5 "Ensure events that modify user/group information are collected (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/group" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/passwd" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/gshadow" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/shadow" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/security\/opasswd" || return 1

#Testing /etc/audit/rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/group" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/passwd" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/gshadow" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/shadow" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+identity" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/security\/opasswd" || return 1
}
test_serial_number="4.1.5"
test_name="Ensure events that modify user/group information are collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
