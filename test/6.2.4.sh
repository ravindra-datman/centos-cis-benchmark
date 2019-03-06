#!/bin/sh
# ** AUTO GENERATED **

# 6.2.4 - Ensure no legacy "+" entries exist in /etc/group (Scored)

if [[ $(grep '^\+:' /etc/group) -eq '' ]] ; then
   return 0
else
   return 1
fi
