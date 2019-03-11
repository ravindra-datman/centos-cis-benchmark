#!/bin/sh
# ** AUTO GENERATED **

# 5.4.2 - Ensure system accounts are non-login (Scored)
# 5.4.2 "Ensure system accounts are non-login (Scored)" Yes Server1 Workstation1
 
execute(){
CNT=$(egrep -v "^\+" /etc/passwd | awk -F: '($1!="root" && $1!="sync" && $1!="shutdown" && $1!="halt" && $3<500 && $7!="/sbin/nologin" && $7!="/bin/false") {print}' |wc -l)

if [[ $CNT -ne 0 ]]; then
        return 1
fi
}
test_serial_number="5.4.2"
test_name="Ensure system accounts are non-login (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
