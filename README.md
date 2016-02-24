
# Ansible installer for geOrchestra on TerraHUB

Original repository : [geOrchestra-ansible](https://github.com/georchestra/ansible)

## Warning

THIS IS A WORK IN PROGRESS! Right now this will deploy a working georchestra from the master branch w/ geonetwork3/mapfishapp/geoserver/geowebcache
with mostly default configs and empty databases/datadirs.

## Configuration

Configuration is located in ```playbooks/terrahub.yml```

In order to deploy all the middleware and components of a geOrchestra instance, you just need to:
 * setup variables for your own instance in ```playbooks/terrahub.yml```, 
 * point to the IP of a host where you have ssh-with-passphrase root access in the ```hosts``` file (ideally, an lxc container, or a vm, whatever suits you)
 
... and run:
```
./install.sh
```

This has only been tested on Debian jessie (8.3) so far.

## cleanup

If you want to remove/cleanup the webapps, databases, LDAP DIT and datadirs, sub-tasks have been added and can be run using

```
./uninstall.sh

