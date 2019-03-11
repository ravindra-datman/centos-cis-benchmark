#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.3 - Ensure password expiration warning days is 7 or more (Scored)
#5.4.1.3 "Ensure password expiration warning days is 7 or more (Scored)" Yes Server1 Workstation1

execute(){
PWA=$(grep -E "^PASS_WARN_AGE" /etc/login.defs | awk {'print $2'})

if [[ $PWA -eq '' || $PWA -lt 7 ]]; then
        echo PASS_WARN_AGE = $PWA
        return 1
fi

for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
        UPA=$(chage --list $i | grep "Number of days of warning before password expires" | cut -d: -f2)
        if [[ $UPA -lt 7 ]]; then
                echo $i password warn age = $UPA
                return 1
        fi
done
}
test_serial_number="5.4.1.3"
test_name="Ensure password expiration warning days is 7 or more (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
