#!/bin/sh
# ** AUTO GENERATED **

# 2.2.7 - Ensure NFS and RPC are not enabled (Scored)
# 2.2.7 "Ensure NFS and RPC are not enabled (Scored)" Yes Server1 Workstation1

execute(){
variable="nfs|nfs-server|rpcbind"
for i in $(echo $variable | sed "s/|/ /g")
do
    systemctl is-enabled $i 2>&1 | grep -E "(disabled|No such file or directory)" || return $?
done
}
test_serial_number="2.2.7"
test_name="Ensure NFS and RPC are not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
