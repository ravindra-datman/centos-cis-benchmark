#!/bin/sh
# ** AUTO GENERATED **

# 5.3.1 - Ensure password creation requirements are configured (Scored)

grep pam_pwquality.so /etc/pam.d/password-auth | grep -E "try_first_pass\s*retry=3" || exit $1

grep pam_pwquality.so /etc/pam.d/system-auth | grep -E "try_first_pass\s*retry=3" || exit $1

grep "minlen = 14" /etc/security/pwquality.conf || exit $1
grep "dcredit = -1" /etc/security/pwquality.conf || exit $1
grep "ucredit = -1" /etc/security/pwquality.conf || exit $1
grep "ocredit = -1" /etc/security/pwquality.conf || exit $1
grep "lcredit = -1" /etc/security/pwquality.conf || exit $1

