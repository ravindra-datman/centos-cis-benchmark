#!/bin/sh
# ** AUTO GENERATED **

# 1.2.2 - Ensure GPG keys are configured (Not Scored)
# 1.2.2 "Ensure GPG keys are configured (Not Scored)" No Server1 Workstation1

execute(){
rpm -q gpg-pubkey --qf '%{name}-%{version}-%{release}' |grep 'gpg-pubkey-f4a80eb5-53a7ff4b' || return 1
}
test_serial_number="1.2.2"
test_name="Ensure GPG keys are configured (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
