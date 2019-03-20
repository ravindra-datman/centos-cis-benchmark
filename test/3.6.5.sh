#!/bin/sh
# ** AUTO GENERATED **

# 3.6.5 - Ensure firewall rules exist for all open ports (Scored)
#3.6.5 "Ensure firewall rules exist for all open ports (Scored)" Yes Server1 Workstation1

execute(){
# tcp
for port in $(netstat -lnt |grep ^tcp | grep LISTEN | awk {'print $4'} |grep -v ^127\.| cut -d":" -f2); do
        echo open tcp port $port

        iptables -L INPUT -v -n | grep "ACCEPT\s*tcp.*:$port" || return $?
done

# udp
for port in $(netstat -lnt |grep ^udp | grep LISTEN | awk {'print $4'} | cut -d":" -f2); do
        echo open udp port $port

        iptables -L INPUT -v -n | grep "ACCEPT\s*udp.*:$port" || return $?
done
}
test_serial_number="3.6.5"
test_name="Ensure firewall rules exist for all open ports (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
