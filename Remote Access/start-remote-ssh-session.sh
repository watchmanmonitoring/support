#!/bin/bash
set -e

function cleanup {
    #delete key
	ssh-agent -D ~/wmsupport.pub
	rm -f ~/wmsupport.pub
	rm -f /etc/sshd_config.bak
	sed -e 's/GatewayPorts yes #wm/#GatewayPorts no/'
}
trap cleanup EXIT

sed -i.bak 's/#GatewayPorts no/GatewayPorts yes #wm/g' /etc/ssh/sshd_config
#copy down key
curl https://support.watchmanmonitoring.com/wmsupport.pub -o ~/wmsupport.pub
chmod 600 ~/wmsupport.pub
ssh-add ~/wmsupport.pub
ssh -R 4040:localhost:22 support@support.watchmanmonitoring.com
echo "Key is added to the system and will be available until this script is quit gracefully"
read
