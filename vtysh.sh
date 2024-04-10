#!/bin/bash
echo -e "default-lease-time 2592000;\npreferred-lifetime 604800;\noption dhcp-renewal-time 3600;\noption dhcp-rebinding-time 7200;\n\nallow leasequery;\n\noption dhcp6.preference 255;\noption dhcp6.info-refresh-time 21600;\n\nsubnet6 FD24:172::/122 {\n\trange6 FD24:172::2 FD24:172::12;\n}\n" > /etc/dhcp/dhcpd6.conf

systemctl enable --now dhcpd6



