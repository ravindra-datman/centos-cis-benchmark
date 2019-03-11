#!/bin/sh
# ** AUTO GENERATED **

# 4.1.4 - Ensure events that modify date and time information are collected (Scored)
# 4.1.4 "Ensure events that modify date and time information are collected (Scored)" Yes Server2 Workstation2


execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-S[[:space:]]+settimeofday" | egrep "\-S[[:space:]]+adjtimex" | egrep "\-F[[:space:]]+arch=b64" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-S[[:space:]]+settimeofday" | egrep "\-S[[:space:]]+adjtimex" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+stime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+clock_settime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+clock_settime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/localtime" || return 1

#Testing the /etc/audit.rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-S[[:space:]]+settimeofday" | egrep "\-S[[:space:]]+adjtimex" | egrep "\-F[[:space:]]+arch=b64" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-S[[:space:]]+settimeofday" | egrep "\-S[[:space:]]+adjtimex" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+stime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+clock_settime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+clock_settime" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+time-change" | egrep "\-p[[:space:]]+wa" | egrep -q "\-w[[:space:]]+\/etc\/localtime" || return 1
}
test_serial_number="4.1.4"
test_name="Ensure events that modify date and time information are collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
