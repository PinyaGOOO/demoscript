#!/bin/bash
echo '#!/bin/bash\n\ndata=$(date +%d.%m.%Y-%H:%M:%S)\nmkdir /var/backup/$data\ncp -r /etc/frr /var/backup/$data\ncp -r /etc/nftables /var/backup/$data\ncp -r /etc/NetworkManager/system-connections /var/backup/$data\ncp -r /etc/dhcp /var/backup/$data\ncd /var/backup\ntar czfv "./$data.tar.gz" ./$data\nrm -r /var/backup/$data' > /var/backup-scripts/backup.sh



