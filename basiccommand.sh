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