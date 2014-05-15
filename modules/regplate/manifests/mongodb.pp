class mongodb {
	package { 'mongodb': ensure => present; }
}

service { 'mongodb':
	ensure  => running,
	require => Package['mongodb'],
	enable => true;
}