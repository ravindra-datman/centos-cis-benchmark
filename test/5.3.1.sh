#!/bin/sh
# ** AUTO GENERATED **

# 5.3.1 - Ensure password creation requirements are configured (Scored)
# 5.3.1 "Ensure password creation requirements are configured (Scored)" Yes Server1 Workstation1

execute(){
grep pam_pwquality.so /etc/pam.d/password-auth | grep -E "try_first_pass\s*retry=3" || return $1

grep pam_pwquality.so /etc/pam.d/system-auth | grep -E "try_first_pass\s*retry=3" || return $1

grep "minlen = 14" /etc/security/pwquality.conf || return $1
grep "dcredit = -1" /etc/security/pwquality.conf || return $1
grep "ucredit = -1" /etc/security/pwquality.conf || return $1
grep "ocredit = -1" /etc/security/pwquality.conf || return $1
grep "lcredit = -1" /etc/security/pwquality.conf || return $1
}
test_serial_number="5.3.1"
test_name="Ensure password creation requirements are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"

important="Yes"
