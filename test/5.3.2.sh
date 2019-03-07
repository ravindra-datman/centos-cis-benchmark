#!/bin/sh
# ** AUTO GENERATED **

# 5.3.2 - Ensure lockout for failed password attempts is configured (Scored)
# 5.3.2 "Ensure lockout for failed password attempts is configured (Scored)" Yes Server1 Workstation1

execute(){
cat /etc/pam.d/password-auth | grep -E "auth\s*required\s*pam_faillock.so" || return $?
cat /etc/pam.d/password-auth | grep -E "auth\s*\[success=1\s*default=bad\]\s*pam_unix.so" || return $?
cat /etc/pam.d/password-auth | grep -E "auth\s*\[default=die\]\s*pam_faillock.so" ||return $?
cat /etc/pam.d/password-auth | grep -E "auth\s*sufficient\s*pam_faillock.so" || return $?

cat /etc/pam.d/system-auth | grep -E "auth\s*required\s*pam_faillock.so" || return $?
cat /etc/pam.d/system-auth | grep -E "auth\s*\[success=1\s*default=bad\]\s*pam_unix.so" || return $?
cat /etc/pam.d/system-auth | grep -E "auth\s*\[default=die\]\s*pam_faillock.so" ||return $?
cat /etc/pam.d/system-auth | grep -E "auth\s*sufficient\s*pam_faillock.so" || return $?
}
test_serial_number="5.3.2"
test_name="Ensure lockout for failed password attempts is configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
