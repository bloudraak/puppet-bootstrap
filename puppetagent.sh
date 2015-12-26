#!/bin/bash
set -e

. /etc/lsb-release

if [ "$EUID" -ne "0" ] ; then
	echo "Script must be run as root." >&2
	exit 1
fi

if which puppet > /dev/null ; then
	echo "Puppet is already installed"
	exit 0
fi

PACKAGE="puppetlabs-release-pc1-${DISTRIB_CODENAME}.deb"
REPO_URL="http://apt.puppetlabs.com/$PACKAGE"

apt-get -q update >/dev/null
apt-get -y install wget >/dev/null

wget "https://apt.puppetlabs.com/$PACKAGE" -O "/tmp/$PACKAGE" --no-verbose
dpkg -i "/tmp/$PACKAGE"
apt-get -q update >/dev/null
rm "/tmp/$PACKAGE"

apt-get -y install puppet-agent

/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

# /opt/puppetlabs/bin/puppet apply
