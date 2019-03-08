#!/bin/sh
# ** AUTO GENERATED **

# 2.2.17 - Ensure rsh server is not enabled (Scored)
#2.2.17 "Ensure rsh server is not enabled (Scored)" Yes Server1 Workstation1

execute(){
variable="rsh|rlogin|rexec"
for i in $(echo $variable | sed "s/|/ /g")
do
    systemctl is-enabled $i 2>&1 | grep -E "(disabled|No such file or directory)" || return $?
done
}
test_serial_number="2.2.17"
test_name="Ensure rsh server is not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
