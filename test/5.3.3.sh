#!/bin/sh
# ** AUTO GENERATED **

# 5.3.3 - Ensure password reuse is limited (Scored)
#5.3.3 "Ensure password reuse is limited (Scored)" Yes Server1 Workstation1

execute(){
R=$(egrep '^password\s+sufficient\s+pam_unix.so' /etc/pam.d/password-auth | grep "remember" | sed 's/.*remember=\([0-9]*\).*/\1/g')
if [[ $R -lt 5 ]] ; then
        return 1
fi

R=$(egrep '^password\s+sufficient\s+pam_unix.so' /etc/pam.d/system-auth |grep "remember" | sed 's/.*remember=\([0-9]*\).*/\1/g')
if [[ $R -lt 5 ]] ; then
        return 1
fi
}
test_serial_number="5.3.3"
test_name="Ensure password reuse is limited (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
