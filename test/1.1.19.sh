#!/bin/sh
# ** AUTO GENERATED **

# 1.1.19 - Ensure nosuid option set on removable media partitions (Not Scored)
# 1.1.19 "Ensure nosuid option set on removable media partitions (Not Scored)" No Server1 Workstation1

execute(){
MEDIA=$(mount -l -t vfat,iso9660,ext)

if [[ -z $MEDIA ]]; then
        return 0
else
        echo $MEDIA | grep "nosuid" || return $?
fi
}
test_serial_number="1.1.19"
test_name="Ensure nosuid option set on removable media partitions (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
