#!/bin/bash
# basic command to check if the server is reachable
ansible all --key-file ~/.ssh/ansible -i inventory -m ping
# keyfile is representing ansible which is key copied to the hosts in the inventory file
# -i expects inventory file,it can be any name