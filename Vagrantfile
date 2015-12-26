# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

	config.vm.provider "vmware_fusion" do |v|
		v.vmx["memsize"] = "2048"
		v.vmx["numvcpus"] = "1"
	end

	config.vm.define "puppet", primary: true do |puppet|
		puppet.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
		puppet.vm.hostname = 'puppet.local'
		puppet.vm.network "private_network", type: "dhcp"
		puppet.vm.network "forwarded_port", guest: 8140, host: 8140, auto_correct: true

		config.vm.provision "shell", inline: <<-SHELL
			sudo /vagrant/bootstrap.sh
		SHELL

	end
	
end
