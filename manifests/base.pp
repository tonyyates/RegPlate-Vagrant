
$node_version = "v0.10.25"

file { '/etc/motd':
	content => "

    regplate Dev VM
    - Version 1.1
    - OS: Ubuntu precise-server-cloudimg-amd64
    - Node:    ${node_version}
    - IP:      192.168.33.110
    - Code:    ~/code/regplate
    - Start:   node ~/code/regplate/server/
\n"
}

# Make all the magic happen by instantiating the regplate class
class { regplate:
	node_version => $node_version
}

