# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
#!/bin/bash
cat > /etc/hosts <<EOF
127.0.0.1       localhost

::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

192.168.100.151   puppet puppet.local
192.168.100.152   agent agent.local
EOF
SCRIPT

Vagrant.configure(2) do |config|

	config.vm.provider "vmware_fusion" do |v|
		v.vmx["memsize"] = "2048"
		v.vmx["numvcpus"] = "1"
	end

	config.vm.define "puppet", primary: true do |puppet|
		puppet.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
		puppet.vm.hostname = 'puppet.local'
		# puppet.vm.network "private_network", type: "dhcp"
		puppet.vm.network :private_network, ip: "192.168.100.151"
		puppet.vm.network "forwarded_port", guest: 8140, host: 8140, auto_correct: true

		puppet.vm.synced_folder "modules/", "/etc/puppetlabs/code/environments/production/modules/"
		puppet.vm.synced_folder "manifests/", "/etc/puppetlabs/code/environments/production/manifests/"
		puppet.vm.provision "shell", inline: $script
		puppet.vm.provision "shell", path: "puppetserver.sh"
	end

	config.vm.define "agent", primary: true do |agent|
		agent.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
		agent.vm.hostname = 'agent.local'
		# agent.vm.network "private_network", type: "dhcp"
		agent.vm.network :private_network, ip: "192.168.100.152"
		agent.vm.provision "shell", inline: $script
		agent.vm.provision "shell", path: "puppetagent.sh"
	end

end
