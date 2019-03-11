#!/bin/sh
# ** AUTO GENERATED **

# 6.2.10 - Ensure users' dot files are not group or world writable (Scored)
# 6.2.10 "Ensure users' dot files are not group or world writable (Scored)" Yes Server1 Workstation1

execute(){
cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
   for file in $dir/.[A-Za-z0-9]*; do
      if [ ! -h "$file" -a -f "$file" ]; then
         fileperm=`ls -ld $file | cut -f1 -d" "`
            if [ `echo $fileperm | cut -c6` != "-" ]; then
               if [[ $1 -ne '' ]] ; then
                  echo "Group Write permission set on file $file"
               fi
            return 1
         fi
         if [ `echo $fileperm | cut -c9` != "-" ]; then
            if [[ $1 -ne '' ]] ; then
               echo "Other Write permission set on file $file"
            fi
            return 1
         fi
      fi
   done
done
}
test_serial_number="6.2.10"
test_name="Ensure users' dot files are not group or world writable (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
