# vagrant-broadle
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

#### Prepare db server, installing mysql
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

