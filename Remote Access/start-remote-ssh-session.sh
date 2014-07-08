#!/bin/bash
set -e

function cleanup {
    #delete key
	ssh-agent -D ~/wmpublic.key
	rm -f ~/wmpublic.key
	rm -f /etc/sshd_config.bak
	sed -e 's/GatewayPorts yes #wm/#GatewayPorts no/'
}
trap cleanup EXIT

sed -i.bak 's/#GatewayPorts no/GatewayPorts yes #wm/g' /etc/sshd_config
#copy down key
curl support.watchmanmonitoring.com/public.key -O ~/wmpubic.key
ssh-add ~/wmpublic.key 
ssh -R 4040:localhost:22 user-with-key@intermediary-ip
echo "Key is added to the system and will be avaliable until this script is quit nicely"
read