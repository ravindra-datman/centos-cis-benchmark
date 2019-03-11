#!/bin/sh
# ** AUTO GENERATED **


# 4.1.17 - Ensure kernel module loading and unloading is collected (Scored)
# 4.1.17 "Ensure kernel module loading and unloading is collected (Scored)" Yes Server2 Workstation2
 
execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-p[[:space:]]+x" \
  | egrep -q "\-w[[:space:]]+\/sbin\/insmod" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-p[[:space:]]+x" \
  | egrep -q "\-w[[:space:]]+\/sbin\/rmmod" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-p[[:space:]]+x" \
  | egrep -q "\-w[[:space:]]+\/sbin\/modprobe" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-S[[:space:]]+delete_module" \
  | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+init_module" \
  | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1

#Testing the /etc/audit/rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-p[[:space:]]+x" \
  | egrep -q "\-w[[:space:]]+\/sbin\/insmod" || return 1

cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-p[[:space:]]+x" \
  | egrep -q "\-w[[:space:]]+\/sbin\/rmmod" || return 1

cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-p[[:space:]]+x" \
  | egrep -q "\-w[[:space:]]+\/sbin\/modprobe" || return 1

cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+modules" | egrep "\-S[[:space:]]+delete_module" \
  | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+init_module" \
  | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
}
test_serial_number="4.1.17"
test_name="Ensure kernel module loading and unloading is collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
