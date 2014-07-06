Useful information to get support via Watchman Monitoring
=======


In order to save you time and hassle during support sessions, we offer our SSH key as a way to allow us access to selected computers.

In most cases, the work we do required admin privileges, so we ask that you load it into the authorized_keys file of a user with sudo permissions.

In cases where it makes more sense to load our key into the root account, we suggest editing your ssh configuration to disallow root login via password.

Restrict root access by editing: 
/etc/sshd_config

Near line 25, in the # Authentication: block.


```
 PermitRootLogin without-password   #If you haven't done so already.
```


If you have any questions, please do not hesitate to reach out to support@watchmanmonitoring.com

```
#Watchman Monitoring Support
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC66N3IyVzpCwC+YmKu5lGKHXe3EFbsRP/ZVjS7tie8CX3lv4jrP+zLvK3P1ctIn/yVNc+FyiMcleQHaLIBtLc24YB7LTizqfikPl/Cq1xpnbxu4YYnen1WZqOHKILV1A1wGoMNGDFlrk+FL8vO80je3jiM92UBTAQNI+yN3GwelYSyNSSttNtO/WxpneJE8+yyP3fk9fzNl4D6kCDEMNGNOrIeVDd2fPpIOywFo+t4RsRe1dx4nHwkypPapgrHXvfnWgydyGJFfJD4/FdZLzNKoHv4sUbJNR5NgjcWefmb2YK6vNmhjvmbgSTFxaQYtOxLcFmvbWiqoP7AUb3n1Zyx support@watchmanmonitoring.com
```

Importing via ssh-import-id
==============

Watchman Monitoring has published its support public key to launchpad:

```
ssh-import-id watchmansupport
```

Import Script (in progress)

Import the key via Github:
======

```
curl https://raw.githubusercontent.com/watchmanmonitoring/support/master/pubkey >> ~/.ssh/authorized_keys
```

*TODO - make this command set the key to expire in a week, make it its own script*


Restrict to select IP addresses
======

If required, access can be IP restricted to the following IP address:

```
173.230.133.218/32
```

Note that this IP address is not related to the function of the Watchman Monitoring service


