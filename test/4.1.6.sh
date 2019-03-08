#!/bin/sh
# ** AUTO GENERATED **

# 4.1.6 - Ensure events that modify the system's network environment are collected (Scored)
#4.1.6 "Ensure events that modify the system's network environment are collected (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-S[[:space:]]+sethostname" \
  | egrep "\-S[[:space:]]+setdomainname" | egrep "\-F[[:space:]]+arch=b64" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-S[[:space:]]+sethostname" \
  | egrep "\-S[[:space:]]+setdomainname" | egrep "\-F[[:space:]]+arch=b32" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/issue" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/issue.net" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/hosts" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/sysconfig\/network" || return 1

#Testing the /etc/audit/rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-S[[:space:]]+sethostname" \
  | egrep "\-S[[:space:]]+setdomainname" | egrep "\-F[[:space:]]+arch=b64" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-S[[:space:]]+sethostname" \
  | egrep "\-S[[:space:]]+setdomainname" | egrep "\-F[[:space:]]+arch=b32" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1
cut -d\# -f1 /etc/audit//rules.d/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/issue" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/issue.net" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/hosts" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+system-locale" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/sysconfig\/network" || return 1
}
test_serial_number="4.1.6"
test_name="Ensure events that modify the system's network environment are collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
