# Puppet Bootstrap

## Requirements

* VMware Fusion 8.x
* Vagrant 1.8.0

## Development

In order to verify your changes

	cd /your/project/path
	git clone https://github.com/wernerstrydom/puppet-bootstrap.git
	cd puppet-bootstrap
	vagrant up

SSH into the VM when Vagrant is done

	vagrant ssh

And verify that a text file was created

	ls /tmp

	drwxrwxrwt  7 root    root    4096 Dec 25 18:19 .
	drwxr-xr-x 23 root    root    4096 Dec 25 18:18 ..
	-rw-r--r--  1 root    root      16 Dec 25 18:19 test.txt
	-rwx--x--x  1 vagrant vagrant   30 Dec 25 18:18 vagrant-shell
	-rw-r--r--  1 root    root    1600 Dec 25 18:18 vgauthsvclog.txt.0
	drwxr-xr-x  2 root    root    4096 Dec 25 18:18 vmware-config0
	drwxrwxrwt  2 root    root    4096 Dec 25 18:23 VMwareDnD
	drwxr-xr-x  2 root    root    4096 Dec 25 18:17 vmware-file-mod0
	drwxr-xr-x  2 root    root    4096 Dec 25 18:18 vmware-fonts0
	drwx------  2 root    root    4096 Dec 25 18:18 vmware-root

The presence of a test.txt file indicates that puppet was installed and that it was succesfully applied.






