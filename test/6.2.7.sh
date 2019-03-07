#!/bin/sh
# ** AUTO GENERATED **

# 6.2.7 - Ensure all users' home directories exist (Scored)
# 6.2.7 "Ensure all users' home directories exist (Scored)" Yes Server1 Workstation1

execute(){
cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   if [ ! -d "$dir" ]; then
      if [[ $1 -ne '' ]] ; then
         echo $dir;
      fi
      return 1
   fi
done
}
test_serial_number="6.2.7"
test_name="Ensure all users' home directories exist (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
