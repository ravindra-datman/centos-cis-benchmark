#!/bin/sh
# ** AUTO GENERATED **

# 5.1.8 - Ensure at/cron is restricted to authorized users (Scored)
# 5.1.8 "Ensure at/cron is restricted to authorized users (Scored)" Yes Server1 Workstation1

execute(){
if [[ -f /etc/cron.deny || -f /etc/at.deny ]]; then
        echo /etc/cron.deny and /etc/at.deny must not exist
        return 1
fi

stat -L -c "%a %u %g" /etc/cron.allow | grep -q "600 0 0$" || return $?

stat -L -c "%a %u %g" /etc/at.allow | grep -q "600 0 0$" || return $?
}
test_serial_number="5.1.8"
test_name="Ensure at/cron is restricted to authorized users (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
