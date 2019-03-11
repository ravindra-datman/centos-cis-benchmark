#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.4 - Ensure inactive password lock is 30 days or less (Scored)
# 5.4.1.4 "Ensure inactive password lock is 30 days or less (Scored)" Yes Server1 Workstation1

execute(){
INA=$(useradd -D | grep INACTIVE | cut -d= -f2)
echo Inactive is $INA

if [[ $INA -eq '' || $INA -gt 30 ]]; then
        echo INACTIVE = $INA
        return 1
fi

for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
        UPA=$(chage --list $i | grep "Password inactive" | cut -d: -f2)
        if [[ $UPA -lt 7 ]]; then
                echo $i password inactive = $UPA
                return 1
        fi
done
}
test_serial_number="5.4.1.4"
test_name="Ensure inactive password lock is 30 days or less (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
