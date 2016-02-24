#!/bin/sh

ansible-playbook -t cleanup -e "cleanup=true" playbooks/terrahub.yml
