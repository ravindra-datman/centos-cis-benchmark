#!/bin/sh
# ** AUTO GENERATED **

# 6.2.1 - Ensure password fields are not empty (Scored)

if [[ -r /etc/shadow ]]; then

   export result=$(cat /etc/shadow | awk -F: '($2 == "" ) { print $1}')

   if [[ -z $result ]]; then
      return 0
   else
      return 1
   fi
else
   return 1
fi
