#!/bin/bash
vtysh -c "configure terminal" \
    -c "router ospf" \
    -c "passive-interface default" \
    -c "network 172.16.100.0/26 area 0" \
    -c "exit" \
    -c "interface tun1" \
    -c "no ip ospf network broadcast" \
    -c "no ip ospf passive" \
    -c "exit" \
    -c "do write"





