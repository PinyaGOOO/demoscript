#!/bin/bash
dnf install -y dhcp-server

echo "subnet 172.16.100.0 netmask 255.255.255.192 {\n  range 172.16.100.2 172.16.100.62;\n  option routers 172.16.100.1;\n  default-lease-time 600;\n max-lease-time 7200;\n}\host hq-srv {\n\thardware ethernet $mac;\n\tfixed-address 172.16.100.2;\n}" >> /etc/dhcp/dhcpd.conf
echo "DHCPDARGS=ens19" >>/etc/sysconfig/dhcpd
systemctl restart dhcpd
systemctl enable --now dhcpd



