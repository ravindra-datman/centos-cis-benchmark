#!/bin/sh
# ** AUTO GENERATED **

# 4.1.12 - Ensure use of privileged commands is collected (Scored)
#4.1.12 "Ensure use of privileged commands is collected (Scored)" Yes Server2 Workstation2

execute(){
priv_cmds="$(find / -xdev \( -perm -4000 -o -perm -2000 \) -type f)"
for cmd in ${priv_cmds} ; do
        cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+privileged" | egrep "\-F[[:space:]]+path=${cmd}" | egrep "\-F[[:space:]]+perm=x" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
done

#Testing the /etc/audit/rules.d/audit.rules file
priv_cmds="$(find / -xdev \( -perm -4000 -o -perm -2000 \) -type f)"
for cmd in ${priv_cmds} ; do
        cut -d\# -f1 /etc/audit/rules.d/audit.rules | egrep "\-k[[:space:]]+privileged" | egrep "\-F[[:space:]]+path=${cmd}" | egrep "\-F[[:space:]]+perm=x" | egrep "\-F[[:space:]]+auid>=1000" | egrep "\-F[[:space:]]+auid\!=4294967295" | egrep -q "\-a[[:space:]]+always,exit|\-a[[:space:]]+exit,always" || return 1
done
}
test_serial_number="4.1.12"
test_name="Ensure use of privileged commands is collected (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
