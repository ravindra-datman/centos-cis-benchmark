#!/bin/sh
# ** AUTO GENERATED **

# 5.4.5 - Ensure default user shell timeout is 900 seconds or less (Scored)
# 5.4.5 "Ensure default user shell timeout is 900 seconds or less (Scored)" Yes Server2 Workstation2

execute(){
if [[ $TMOUT -eq "" || $TMOUT -gt 900 ]]; then
        return 1
fi
}
test_serial_number="5.4.5"
test_name="Ensure default user shell timeout is 900 seconds or less (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
