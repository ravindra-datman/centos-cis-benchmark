#!/bin/sh
# ** AUTO GENERATED **

# 1.2.1 - Ensure package manager repositories are configured (Not Scored)
# 1.2.1 "Ensure package manager repositories are configured (Not Scored)" No Server1 Workstation1

execute(){
yum repolist

return 1
}
test_serial_number="1.2.1"
test_name="Ensure package manager repositories are configured (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
