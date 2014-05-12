#RegPlate-Vagrant

Vagrant setup for developing RegPlate

## Changelog

#### 1.0

- changed the RegPlate shared folder path to `/home/vagrant/code/RegPlate`

## Instructions

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant >1.3.5](http://downloads.vagrantup.com/tags/v1.3.5)
- Install the [vagrant-vbguest plugin](https://github.com/dotless-de/vagrant-vbguest): `vagrant plugin install vagrant-vbguest`
- Clone this repo `git clone git@bitbucket.org:TonyYates/RegPlate-vagrant.git`
- Edit the `Vagrantfile` in the root
- Change your `RegPlateSourcePath` to match point to where your source code for RegPlate is on your host machine environment
- Add RegPlateweb to your machines hostfile `sudo sh -c 'echo "192.168.33.100 RegPlateWeb" >> /etc/hosts'`


## Updating Virtual Box Guest Additions

The packaged vagrant box from Ubuntu contains outdated Virtual Box Guest Additions.  Most of the time this shouldn't be a problem, but if you want to update them I recommend this procedure:

1. Install the [vagrant-vbguest plugin](https://github.com/dotless-de/vagrant-vbguest): `vagrant plugin install vagrant-vbguest`
1. Boot the vm without provisioning: `vagrant up --no-provision`
1. Login with `vagrant ssh` and run `sudo apt-get -y -q purge virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11`
1. Logout and `vagrant halt`
1. `vagrant up`
1. `vagrant halt`
1. `vagrant up --provision`


## Login and start the server
- Login to the VM with `vagrant ssh`
- Change to the RegPlate source directory: `cd code/RegPlate/server`
- Install dependencies: `npm install`
- Run the RegPlate App: `node server.js` or `npm start`
- From your host machine browse to http://RegPlateWeb

## Copyright & License
MIT


