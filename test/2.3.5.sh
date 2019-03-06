#!/bin/sh
# ** AUTO GENERATED **

# 2.3.5 - Ensure LDAP client is not installed (Scored)
# 2.3.5 "Ensure LDAP client is not installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q openldap-clients | grep -E "package openldap-clients is not installed" || return $1
}
test_serial_number="2.3.5"
test_name="Ensure LDAP client is not installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
