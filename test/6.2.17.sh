#!/bin/sh
# ** AUTO GENERATED **

# 6.2.17 - Ensure no duplicate GIDs exist (Scored)
# 6.2.17 "Ensure no duplicate GIDs exist (Scored)" Yes Server1 Workstation1

execute(){
cat /etc/group | cut -f3 -d":" | sort -n | uniq -c | while read x ; do
   [ -z "${x}" ] && break
   set - $x
   if [ $1 -gt 1 ]; then
      if [[ $1 -ne '' ]] ; then
         echo "Duplicate GID ($2): ${groups}"
      fi
      return 1
   fi
done
}
test_serial_number="6.2.17"
test_name="Ensure no duplicate GIDs exist (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
