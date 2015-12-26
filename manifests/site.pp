node 'puppet' {

	include apt

	apt::source { "puppetlabs_precise" :
		location	=> "http://apt.puppetlabs.com/",
		release		=> "precise",
		repos		=> " main",
		include_src	=> false
	}

	package { ['puppetserver'] :
		ensure 		=> latest
	}

	file { "/etc/default/puppetserver":
		source 		=>"puppet:///modules/puppetserver/puppetserver",
		ensure 		=> file,
	}

	service { 'puppetserver':
		ensure		=> running,
		enable		=> true,
		require		=> [
			Package['puppetserver'],
			File['/etc/default/puppetserver'],
		]
	}

}


node 'default' {

	include apt

	apt::source { "puppetlabs_precise" :
		location	=> "http://apt.puppetlabs.com/",
		release		=> "precise",
		repos		=> " main",
		include_src	=> false
	}


}