#!/bin/sh
# ** AUTO GENERATED **

# 4.1.13 - Ensure successful file system mounts are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+mounts" | egrep "\-S[[:space:]]+mount" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+mounts" | egrep "\-S[[:space:]]+mount" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

#Testing the /etc/audit/rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+mounts" | egrep "\-S[[:space:]]+mount" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+mounts" | egrep "\-S[[:space:]]+mount" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

