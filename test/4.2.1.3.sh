#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.3 - Ensure rsyslog default file permissions configured (Scored)
#4.2.1.3 "Ensure rsyslog default file permissions configured (Scored)" Yes Server1 Workstation1

execute(){
EC=0
[[ "$(grep ^\$FileCreateMode /etc/rsyslog.conf)" =~ 0[0-6][0-4]0$ ]] || EC=1
if [[ $EC == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/rsyslog.d/) ]] ; then
        [[ "$(grep ^\$FileCreateMode /etc/rsyslog.d/*.conf)" =~ 0[0-6][0-4]0$ ]] || EC=1
        if [[ $EC == 0 ]]; then
                return 0
        fi
fi
}
test_serial_number="4.2.1.3"
test_name="Ensure rsyslog default file permissions configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
