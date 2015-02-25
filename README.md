ansible-cassandra
=============

Installs and configures N number of Cassandra nodes in a cluster on Rackspace Public Cloud & (AWS WIP)

## Requirements
1. Ansible > v1.8
2. Rackspace Public Cloud account

## Configuration and files
1. **config/group_vars/all**: contains global variables for cluster settings
2. **prov.sh**: Builds the entire stack -->  
    \ ``` ansible-playbook config/db-server.yml -f 20 ```  
     \ ``` ansible-playbook -i scripts/rax.py config/db.yml -f 20 ```  
      \ ``` ansible -vvvv -u root -i scripts/rax.py db -m ping -f 20 ```  

3. **ping.sh**: Pings all nodes with verbose output  
4. **delete.sh**: Deletes all nodes in cluster with name defined in "all" group_vars.  

## Installation
1. ``` bash prov.sh ```

## Directory structure
ansible-cassandra/
├───ansible.cfg
├───provision.sh
├───nodetool-prov.sh
├───ping.sh
├───cluster-delete.sh
├───nodetool-delete.sh
├───scripts/
│   └───rax.py
├───vagrant-test/
│   └───Vagrantfile
│   └───db.yml
│   └───group_vars/
│       └───all
│   └───roles/
│       └───db/
│           └───handlers/
│               └───main.yml
│           └───tasks/
│               └───main.yml
│               └───common.yml
│               └───cassandra.yml
│               └───dependencies.yml
│               └───repository.yml
│           └───templates/
│               └───mcassandra-2.1.j2
│               └───cassandra-2.0.j2
│               └───cassandra-1.2.j2
│               └───cassandra-2.1-env.j2
│               └───policy-rc.d.j2
│               └───ufw.j2
│               └───log4j-server.properties
│
├───config/
    └───db-server.yml
    └───db.yml
    └───delete_db.yml
    └───nodetool-server.yml
    └───nodetool.yml
    └───nodetool-delete.yml
    └───group_vars/
    │   └───all
    └───roles/
        └───db/
        │   └───files/
        │   └───handlers/
        │   │   └───main.yml
        │   └───tasks/
        │   │   └───main.yml
        │   │   └───common.yml
        │   │   └───cassandra.yml
        │   │   └───dependencies.yml
        │   │   └───repository.yml
        │   └───templates/
        │       └───cassandra-2.1.j2
        │       └───cassandra-2.0.j2
        │       └───cassandra-1.2.j2
        │       └───cassandra-2.1-env.j2
        │       └───policy-rc.d.j2
        │       └───ufw.j2
        │       └───log4j-server.properties
        └───nodetool/
            └───handlers/
            │   └───main.yml
            └───tasks/
                └───main.yml
                └───common.yml
                └───cassandra.yml
                └───dependencies.yml
                └───repository.yml
