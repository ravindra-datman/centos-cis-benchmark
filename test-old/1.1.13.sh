#!/bin/sh
# ** AUTO GENERATED **

# 1.1.13 - Ensure separate partition exists for /home (Scored)
# 1.1.13 "Ensure separate partition exists for /home (Scored)" Yes Server2 Workstation2



mount | grep /home || exit $?
