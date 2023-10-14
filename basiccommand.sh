#!/bin/bash
# basic command to check if the server is reachable
ansible all --key-file ~/.ssh/ansible -i inventory -m ping
# keyfile is representing ansible which is key copied to the hosts in the inventory file
# -i expects inventory file,it can be any name
# you can create .cfg file which will override settings in /etc/ansible.cfg
# in this case command changes to
ansible all -m ping
# now lets gather facts for all hosts in the inventory file
ansible all -m gather_facts
# facts gathered for single host
ansible all -m gather_facts --limit 192.168.50.129
# now lets update the package index on all servers in the inventory
ansible all -m apt -a update_cache=true
# -a is for argument
# but become user is required
ansible all -m apt -a update_cache=true --become --ask-become-pass
# update_cache can be true(yes) or false(no).
ansible all -m apt -a name=fortune-mod --become --ask-become-pass
# to upgrade the specific package
ansible all -m apt -a "name=fortune-mode state=latest" --become --ask-become-pass
# notice state=latest
ansible all -m apt -a "autoremove=true" --become --ask-become-pass
# upgrade all packages on all hosts in the inventory
ansible all -m apt -a "upgrade=dist" --become --ask-become-pass
# run a playbook playbook_install_apache
ansible-playbook -K playbook_install_apache.yaml
# K (capital) --ask-become-pass
