#!/bin/sh
# ** AUTO GENERATED **

# 6.2.3 - Ensure no legacy "+" entries exist in /etc/shadow (Scored)

if [[ -r /etc/shadow ]]; then
   if [[ $(grep '^\+:' /etc/shadow) -eq '' ]] ; then
      return 0
   else
      return 1
   fi
else
   return 1
fi
