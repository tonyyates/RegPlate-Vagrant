
$node_version = "v0.10.22"

file { '/etc/motd':
	content => "

    RegPlate Dev VM
    - Version 1.1
    - OS: Ubuntu precise-server-cloudimg-amd64
    - Node:    ${node_version}
    - IP:      192.168.33.100
    - Code:    ~/code/regplate
    - Start:   node ~/code/regplate/server/
\n"
}

# Update the latest ubuntu packages
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }

# Make all the magic happen by instantiating the regplate class
class { regplate:
	node_version => $node_version
}

