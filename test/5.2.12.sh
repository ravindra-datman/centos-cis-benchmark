#!/bin/sh
# ** AUTO GENERATED **

# 5.2.12 - Ensure SSH Idle Timeout Interval is configured (Scored)
# 5.2.12 "Ensure SSH Idle Timeout Interval is configured (Scored)" Yes Server1 Workstation1

execute(){
CAI=$(grep "^ClientAliveInterval" /etc/ssh/sshd_config | awk {'print $2'})

if [[ $CAI -eq '' || $CAI -lt 1 || $CAI -gt 300 ]]; then
        echo ClientAliveInterval = $CAI
        return 1
fi

CACM=$(grep "^ClientAliveCountMax" /etc/ssh/sshd_config |awk {'print $2'})

if [[ $CACM -gt 3 ]]; then
        echo ClientAliveCountMax = $CACM
        return 1
fi
}
test_serial_number="5.2.12"
test_name="Ensure SSH Idle Timeout Interval is configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
