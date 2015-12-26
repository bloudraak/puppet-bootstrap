file { 'hello.txt':
	path    => '/tmp/test.txt',
	ensure  => file,
	content => "this test worked",
}