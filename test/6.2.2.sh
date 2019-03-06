#!/bin/sh
# ** AUTO GENERATED **

# 6.2.2 - Ensure no legacy "+" entries exist in /etc/passwd (Scored)

if [[ -r /etc/passwd ]]; then
   if [[ $(grep '^\+:' /etc/passwd) -eq '' ]] ; then
      return 0
   else
      return 1
   fi
else
      return 1
fi
