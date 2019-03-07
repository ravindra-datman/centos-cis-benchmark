#!/bin/sh
# ** AUTO GENERATED **

# 5.3.4 - Ensure password hashing algorithm is SHA-512 (Scored)
# 5.3.4 "Ensure password hashing algorithm is SHA-512 (Scored)" Yes Server1 Workstation1

execute(){
egrep '^password\s+sufficient\s+pam_unix.so' /etc/pam.d/password-auth | grep sha512 || return $?

egrep '^password\s+sufficient\s+pam_unix.so' /etc/pam.d/system-auth | grep sha512 || return $?
}
test_serial_number="5.3.4"
test_name="Ensure password hashing algorithm is SHA-512 (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
