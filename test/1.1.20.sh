#!/bin/sh
# ** AUTO GENERATED **

# 1.1.20 - Ensure noexec option set on removable media partitions (Not Scored)
# 1.1.20 "Ensure noexec option set on removable media partitions (Not Scored)" No Server1 Workstation1

execute(){
MEDIA=$(mount -l -t vfat,iso9660,ext)

if [[ -z $MEDIA ]]; then
        return 0
else
        echo $MEDIA | grep "noexec" || return $?
fi
}
test_serial_number="1.1.20"
test_name="Ensure noexec option set on removable media partitions (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"

