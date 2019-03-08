#!/bin/sh
# ** AUTO GENERATED **

# 6.2.15 - Ensure all groups in /etc/passwd exist in /etc/group (Scored)
# 6.2.15 "Ensure all groups in /etc/passwd exist in /etc/group (Scored)" Yes Server1 Workstation1

execute(){
for i in $(cut -s -d: -f4 /etc/passwd | sort -u ); do
   grep -q -P "^.*?:[^:]*:$i:" /etc/group
   if [ $? -ne 0 ]; then
      if [[ $1 -ne '' ]] ; then
         echo "Group $i is referenced by /etc/passwd but does not exist in /etc/group"
      fi
      return 1
   fi
done
}
test_serial_number="6.2.15"
test_name="Ensure all groups in /etc/passwd exist in /etc/group (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
