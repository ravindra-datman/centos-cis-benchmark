#!/bin/sh
# ** AUTO GENERATED **

# 6.2.9 - Ensure users own their home directories (Scored)
#6.2.9 "Ensure users own their home directories (Scored)" Yes Server1 Workstation1

execute(){
cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   if [ -d "$dir" ]; then
      owner=$(stat -L -c "%U" "$dir")
      if [ "$owner" != "$user" ]; then
         if [[ $1 -ne '' ]] ; then
            echo "The home directory ($dir) of user $user is owned by $owner."
         fi
         return 1
      fi
   fi
done
}
test_serial_number="6.2.9"
test_name="Ensure users own their home directories (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
