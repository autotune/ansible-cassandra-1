#!/bin/bash

#provision nodes
ansible-playbook config/ds_nodetool-server.yml -f 20

#configure nodes
ansible-playbook -i scripts/rax.py config/ds_nodetool.yml -f 20

#ping them
ansible -vvvv -u root -i scripts/rax.py ds_nodetool -m ping -f 20
