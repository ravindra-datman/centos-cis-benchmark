#!/bin/sh
# ** AUTO GENERATED **

# 5.4.4 - Ensure default user umask is 027 or more restrictive (Scored)
# 5.4.4 "Ensure default user umask is 027 or more restrictive (Scored)" Yes Server1 Workstation1

execute(){
[[ "$(umask)" =~ [0-7][2-7]7$ ]] || return;
}
test_serial_number="5.4.4"
test_name="Ensure default user umask is 027 or more restrictive (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
