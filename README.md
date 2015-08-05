# Vagrant Broadle
Vagrant Broadle for all vagrant configuration for Broadle Ecommerce


#### Installing Vagrant
* http://www.vagrantup.com/downloads.html

#### Loading Linux Ubuntu 12.04 LTS 32 bits
* vagrant box add hashicorp/precise32

#### Executing Vagrant
``` 
vagrant up
```

#### Sign-in into db or web server
``` 
vagrant ssh db
vagrant ssh web
``` 

#### Sign-out from db or web server, with thw following commands
```
logout
exit
ctrl+D
```

Prepare db server, installing mysql
----------------------------------------
```
vagrant ssh db
sudo apt-get update
sudo apt-get install mysql-server
```

#### Installing vim
```
sudo apt-get install vim
```

#### Open mysql connection to the World 
* create `allow_external.conf` file
* `sudo vim /etc/mysql/conf.d/allow_external.cnf`
* write the following content

```
[mysqld]
      bind-address = 0.0.0.0
```

#### Restarting mysql
```
sudo service mysql restart
```

#### Creating database
```sql
create database loja_schema
```

#### Grant privileges to loja user
```sql
grant all privileges on loja_schema to 'loja'@'%' identified by 'lojasecret';
```

Preparing web server
--------------------


