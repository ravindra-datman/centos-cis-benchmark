#!/bin/sh
# ** AUTO GENERATED **

# 5.2.11 - Ensure only approved MAC algorithms are used (Scored)
#5.2.11 "Ensure only approved MAC algorithms are used (Scored)" Yes Server1 Workstation1

execute(){
MACs=$(grep "MACs" /etc/ssh/sshd_config  | awk {'print $2'})

if [[ -z $MACs ]]; then
        return 1
fi

for MAC in $(echo $MACs | sed "s/,/ /g")
do
        echo MAC = $MAC
        echo "hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com" | grep "$MAC" || return $?
done
}
test_serial_number="5.2.11"
test_name="Ensure only approved MAC algorithms are used (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
