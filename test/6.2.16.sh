#!/bin/sh
# ** AUTO GENERATED **

# 6.2.16 - Ensure no duplicate UIDs exist (Scored)
# 6.2.16 "Ensure no duplicate UIDs exist (Scored)" Yes Server1 Workstation1

execute(){
cat /etc/passwd | cut -f3 -d":" | sort -n | uniq -c | while read x ; do 
   [ -z "${x}" ] && break
   set - $x
   if [ $1 -gt 1 ]; then 
      if [[ $1 -ne '' ]] ; then
         echo "Duplicate UID ($2): ${users}"
      fi
      return 1
   fi
done
}
test_serial_number="6.2.16"
test_name="Ensure no duplicate UIDs exist (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
