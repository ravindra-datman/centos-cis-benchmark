#!/bin/sh
# ** AUTO GENERATED **

# 4.1.14 - Ensure file deletion events by users are collected (Scored)
# 4.1.14 "Ensure file deletion events by users are collected (Scored)" Yes Server2 Workstation2

execute(){
cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+delete" | egrep "\-S[[:space:]]+unlink" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+unlinkat" | egrep "\-S[[:space:]]+rename" | egrep "\-S[[:space:]]+renameat" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+delete" | egrep "\-S[[:space:]]+unlink" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+unlinkat" | egrep "\-S[[:space:]]+rename" | egrep "\-S[[:space:]]+renameat" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

#Testing the /etc/audit/rules/d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+delete" | egrep "\-S[[:space:]]+unlink" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-S[[:space:]]+unlinkat" | egrep "\-S[[:space:]]+rename" | egrep "\-S[[:space:]]+renameat" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+delete" | egrep "\-S[[:space:]]+unlink" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-S[[:space:]]+unlinkat" | egrep "\-S[[:space:]]+rename" | egrep "\-S[[:space:]]+renameat" | egrep "\-F[[:space:]]+auid>=500" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1
}
test_serial_number="4.1.14"
test_name="Ensure file deletion events by users are collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
