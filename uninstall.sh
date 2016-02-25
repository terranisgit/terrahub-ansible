#!/bin/sh

ansible-playbook $@ -t cleanup -e "cleanup=true" playbooks/terrahub.yml 

sudo apt-get purge -y ldap-utils slapd
