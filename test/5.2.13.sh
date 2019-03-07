#!/bin/sh
# ** AUTO GENERATED **

# 5.2.13 - Ensure SSH LoginGraceTime is set to one minute or less (Scored)
# 5.2.13 "Ensure SSH LoginGraceTime is set to one minute or less (Scored)" Yes Server1 Workstation1

execute(){
LGT=$(grep "^LoginGraceTime" /etc/ssh/sshd_config | awk {'print $2'})
if [[ $LGT -eq '' || $LGT -gt 60 || $LGT -lt 1 ]]; then
        echo LoginGraceTime is $LGT
        return 1
fi
}
test_serial_number="5.2.13"
test_name="Ensure SSH LoginGraceTime is set to one minute or less (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
