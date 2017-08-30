# 2 Tier infrastracture with Mysql Replication
This is a brief documentation of how to use this scripts.

## Setup Aws infrastructure
The aws machines are provisioned using terraform, you may need to have this installed before you proceed. Change `terraform.tfvars` with your variables if needed.

NOTE: You need to have aws account setup, and configured.
```
aws configure --profile <your profile>

```

### Provision servers

```
make plan

make appply

```
### Generate ansible hosts

```
make inventory
```

This will create `inventory.ini` file in terraform folder. move this to `ansible/inventory` folder

### Destroy Servers

```
make destroy

```

### Using Vagrant

Start test VMs by running vagrant up, this will provision 6 vms with network ips of `192.168.56.101` to `192.168.56.106`.

When the vms are up and running, add there private keys ssh client (use ssh-add <key-file>), you can get the indenty files by running vagrant ssh-config.

The scripts already have encrypted sample variables in `ansible/inventory/vars` you may need ansible vault password to use them (Ask for the password). You can also add your own varables using the samples provided.

If provided with password create .password file in root dir and add the password in it.

### Provision App,Database

To install and setup App and database

```

chmod u+x bin/setup

bin/setup

```

The scripts will use the existing ansible hosts file to provision your vagrant vms.

Once Done you can access you app via the load balancer ip `192.168.56.101`

### Using Aws servers ( setup using terraform above)

Once you have setup the servers and run `make inventory`, move the created host.ini to `ansible/inventory` and rename it hosts.

Modify the ansible vars with appropriate ips
    - proxy_servers
    - wp_mysql_host
    - mysql_replication_master


To install and setup App and database

```
chmod u+x bin/install-roles
chmod u+x bin/setup

bin/install-roles
bin/setup

```

## ANSIBLE VAULT UTILS
 you can use the following scripts to interact with ansible vault

### ENCYRPT VARIABLES FILE
All the filenames are inside ansible/vars directory. DO NOT Encrypt sample files
```
bin/encrpt <filename>
```
### EDIT ENCYRPTED FILES
```
$ bin/edit <filename>

```

## DISCLAIMER
This scripts are for assement only therefore they have not been extensively tested, and should be used as reference or blue print. The Owner will not reliable of any side effects if used in production environment.
