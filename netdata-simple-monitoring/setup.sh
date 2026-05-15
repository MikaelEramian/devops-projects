#!/bin/bash
echo "Installing Netdata..."
curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh
bash /tmp/netdata-kickstart.sh
sudo systemctl enable netdata
sudo systemctl start netdata
echo "Netdata installed and running at http://localhost:19999"
