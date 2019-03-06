#!/bin/sh
# ** AUTO GENERATED **

# 1.7.2 - Ensure GDM login banner is configured (Scored)
# 1.7.2 "Ensure GDM login banner is configured (Scored)" Yes Server1 Workstation1

execute(){
rpm -q gdm | grep -Eq "package gdm is not installed"
if [[ $? -ne 0 ]]; then

        if [[ -f /etc/dconf/profile/gdm ]]; then
                cat /etc/dconf/profile/gdm | grep -E "user-db:user" || return $?
                cat /etc/dconf/profile/gdm | grep -E "system-db:gdm" || return $?
                cat /etc/dconf/profile/gdm | grep -E "file-db:/usr/share/gdm/greeter-dconf-defaults" || return $?

    if [[ $(ls -A /etc/dconf/db/gdm.d/) ]] ; then
                        grep "banner-message-enable=true" /etc/dconf/db/gdm.d/* || return $?
                else
                        return 1
                fi
        else
                return 1
        fi
fi
}
test_serial_number="1.7.2"
test_name="Ensure GDM login banner is configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
