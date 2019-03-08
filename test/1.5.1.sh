#!/bin/sh
# ** AUTO GENERATED **

# 1.5.1 - Ensure core dumps are restricted (Scored)
# 1.5.1 "Ensure core dumps are restricted (Scored)" Yes Server1 Workstation1

execute(){
if [[ $(ls -A /etc/security/limits.d/) ]] ; then
        grep "hard core\s*0" /etc/security/limits.conf /etc/security/limits.d/* || return $?
else
        grep "hard core\s*0" /etc/security/limits.conf || return $?
fi

sysctl fs.suid_dumpable | grep -E "fs.suid_dumpable = 0"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "fs.suid_dumpable" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "fs.suid_dumpable = 0" || return $?
else
        grep "fs.suid_dumpable" /etc/sysctl.conf | grep -E "fs.suid_dumpable = 0" || return $?
fi
}
test_serial_number="1.5.1"
test_name="Ensure core dumps are restricted (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
