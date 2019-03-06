#!/bin/sh
# ** AUTO GENERATED **

# 2.3.1 - Ensure NIS Client is not installed (Scored)
# 2.3.1 "Ensure NIS Client is not installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q ypbind | grep -E "package ypbind is not installed" || return $1
}
test_serial_number="2.3.1"
test_name="Ensure NIS Client is not installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
