#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.1 - Ensure password expiration is 365 days or less (Scored)
# 5.4.1.1 "Ensure password expiration is 365 days or less (Scored)" Yes Server1 Workstation1

execute(){
PMD=$(grep -E "^PASS_MAX_DAYS" /etc/login.defs | awk {'print $2'})

if [[ $PMD -eq '' || $PMD -gt 365 ]]; then
        echo PASS_MAX_DAYS = $PMD
        return 1
fi

for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
        UPA=$(chage --list $i | grep "Maximum number of days between password change" | cut -d: -f2)
        if [[ $UPA -gt 365 ]]; then
                echo $i maximum days between password change = $UPA
                return 1
        fi
done
}
test_serial_number="5.4.1.1"
test_name="Ensure password expiration is 365 days or less (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
