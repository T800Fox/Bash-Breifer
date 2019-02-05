#!/bin/bash
# prints ip
ip=$(ifconfig | grep netmask | sed -n '2p')
echo IP: ${ip:5:13}

# prints MAC
mac=$(ifconfig | grep ether | head -n 1)
echo MAC: ${mac:7:17}

