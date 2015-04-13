#!/bin/bash
#This is the master provisioning script


#provision nodes
ansible-playbook config/ds_db-server.yml -f 20

#configure nodes
ansible-playbook -i scripts/rax.py config/ds_db.yml -f 20

#ping them
ansible -vvvv -u root -i scripts/rax.py ds_db -m ping -f 20
