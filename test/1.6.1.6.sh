#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.6 - Ensure no unconfined daemons exist (Scored)
# 1.6.1.6 "Ensure no unconfined daemons exist (Scored)" Yes Server2 Workstation2

execute(){
out=$(ps -eZ | egrep "initrc" | egrep -vw "tr|ps|egrep|bash|awk" | tr ':' ' ' | awk '{ print $NF }')
[[ -z "${out}" ]] || return 1
}
test_serial_number="1.6.1.6"
test_name="Ensure no unconfined daemons exist (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
