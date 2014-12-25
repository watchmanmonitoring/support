#Connecting to a machine behind NAT:

1. On the machine you wish to connect to (referred to as "destination machine"), run start-remote-ssh-session.sh as root (see notes below if root is not avalaible)
2. On the machine you wish to connect from ("source machine"), run connect-to-session.sh

You should now be connected.

When you wish to close the session, quit start-remote-ssh-session.sh gracefully with ctl+c (if you do not do this, the watchman public key will remain on the machine)

####To manually cleanup, run the following:

`ssh-agent -D ~/wmsupport.pub`
`rm -f ~/wmsupport.pub`
`rm -f /etc/sshd_config.bak`
`sed -e 's/GatewayPorts yes #wm/#GatewayPorts no/'`
	
######If root is not avalaible, a sudo will sufffice.  However, you will need to edit connect-to-session.sh and replace the default username of "root" (line 5) with the user you are running the script as 
