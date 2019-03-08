#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.5 - Ensure all users last password change date is in the past (Scored)
# 5.4.1.5 "Ensure all users last password change date is in the past (Scored)" Yes Server1 Workstation1

execute(){
NOW=$(date +%s)
for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
        UPA=$(chage --list $i | grep "Last password change" | cut -d: -f2)
        EPOCH=$(date -d "$UPA" +%s)

        if [[ $EPOCH -gt $NOW ]]; then
                echo Password change in future - $i - $UPA
                return 1
        fi
done
}
test_serial_number="5.4.1.5"
test_name="Ensure all users last password change date is in the past (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
