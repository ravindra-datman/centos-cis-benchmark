#!/bin/sh
# ** AUTO GENERATED **

# 4.1.11 - Ensure unsuccessful unauthorized file access attempts are collected (Scored)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EACCES" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EACCES" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EPERM" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EPERM" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

#Testing the /etc/audit/rules.d/audit.rules file
cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EACCES" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EACCES" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b64" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EPERM" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+access" | egrep "\-S[[:space:]]+creat" | egrep "\-S[[:space:]]+open" | egrep "\-S[[:space:]]+openat" | egrep "\-S[[:space:]]+truncate" | egrep "\-S[[:space:]]+ftruncate" | egrep "\-F[[:space:]]+arch=b32" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep "\-F[[:space:]]return=\-EPERM" | egrep -q "\-a[[:space:]]+always,return|\-a[[:space:]]+return,always" || return 1
