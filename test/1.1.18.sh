#!/bin/sh
# ** AUTO GENERATED **

# 1.1.18 - Ensure nodev option set on removable media partitions (Not Scored)
# 1.1.18 "Ensure nodev option set on removable media partitions (Not Scored)" No Server1 Workstation1

execute(){
MEDIA=$(mount -l -t vfat,iso9660,ext)

if [[ -z $MEDIA ]]; then
        return 0
else
        echo $MEDIA | grep "nodev" || return $?
fi
}
t_serial_number="1.1.18"
test_name="Ensure nodev option set on removable media partitions (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
