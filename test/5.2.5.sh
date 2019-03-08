#!/bin/sh
# ** AUTO GENERATED **

# 5.2.5 - Ensure SSH MaxAuthTries is set to 4 or less (Scored)
# 5.2.5 "Ensure SSH MaxAuthTries is set to 4 or less (Scored)" Yes Server1 Workstation1

execute(){
MAT=$(grep "^MaxAuthTries" /etc/ssh/sshd_config |awk {'print $2'})

if [[ $MAT -eq '' || $MAT -gt 4 ]]; then
        echo MaxAuthTries = $MAT
        return 1
fi
}
test_serial_number="5.2.5"
test_name="Ensure SSH MaxAuthTries is set to 4 or less (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
