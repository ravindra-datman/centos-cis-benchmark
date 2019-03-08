#!/bin/sh
# ** AUTO GENERATED **

# 6.2.19 - Ensure no duplicate group names exist (Scored)
# 6.2.19 "Ensure no duplicate group names exist (Scored)" Yes Server1 Workstation1

execute(){
cat /etc/group | cut -f1 -d":" | sort -n | uniq -c | while read x ; do
   [ -z "${x}" ] && break
   set - $x
   if [ $1 -gt 1 ]; then
      if [[ $1 -ne '' ]] ; then
         gids=`gawk -F: '($1 == n) { print $3 }' n=$2 /etc/group | xargs`
         echo "Duplicate Group Name ($2): ${gids}"
      fi
      return 1
   fi
done
}
test_serial_number="6.2.19"
test_name="Ensure no duplicate group names exist (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
