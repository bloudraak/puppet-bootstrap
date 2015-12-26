# Puppet Bootstrap

This bootstraps Puppet Server for the following operating systems:

* Ubuntu Server 14.04

## Requirements

Software 
* [VMware Fusion 8.x](https://www.vmware.com/products/fusion)
* [Vagrant 1.8.0](https://www.vagrantup.com)

Hardware
* Diskspace: 10GB Freespace
* Memory: 4GB

## Development

To clone the repo

	git clone https://github.com/wernerstrydom/puppet-bootstrap.git 
	cd puppet-bootstrap

This repo uses [Vagrant](https://www.vagrantup.com) for development. To bring the environment up you can run the following command:

	vagrant up

To delete the environment

	vagrant destroy -f

It takes approx. 5 minutes to create a new environment.

You can then SSH into the puppet server by executing

	vagrant ssh puppet

Or if you’d like to SSH into the agent, you could execute

	vagrant ssh agent







