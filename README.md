# Puppet Bootstrap

This bootstraps Puppet Server for

* Ubuntu Server 14.04

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

And verify that `puppetserver` is running

	sudo service puppetserver status








