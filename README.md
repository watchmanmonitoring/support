Delegating access to Watchman Monitoring Support
=======

In order to ease the process of granting temporary access, we have [posted an SSH key](https://raw.githubusercontent.com/watchmanmonitoring/support/master/pubkey) as a way to allow us access to selected computers.

In most cases, diagnosing issues requires admin privileges to access key logs, so we ask that you load it into the authorized_keys file of a user with sudo permissions.

In cases where it makes more sense to load our key into the root account, we suggest editing your ssh configuration to disallow root login via password.

If you haven't done so already, we suggest you restrict ssh as `root` by editing the `/etc/sshd_config` file

Near line 25, in the `# Authentication:` block.

```
 PermitRootLogin without-password
```


If you have any questions, please do not hesitate to reach out to support@watchmanmonitoring.com


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


Restrict to the source IP address
======

If required, access can be IP restricted to allow only the following IP address:

```
173.230.133.218/32
```

Note that this IP address is not related to the function of the Watchman Monitoring service
