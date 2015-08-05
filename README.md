# Vagrant Broadle
Vagrant Broadle for all vagrant configuration for Broadle Ecommerce


#### Installing Vagrant
* http://www.vagrantup.com/downloads.html

#### Loading Linux Ubuntu 12.04 LTS 32 bits
* vagrant box add hashicorp/precise32

#### Executing Vagrant
``` 
$ vagrant up
```

#### Sign-in into db or web server
``` 
$ vagrant ssh db
$ vagrant ssh web
``` 

#### Sign-out from db or web server, with thw following commands
```
$ logout
$ exit
$ ctrl+D
```

Prepare db server, installing mysql
----------------------------------------
```
$ vagrant ssh db
$ sudo apt-get update
$ sudo apt-get install mysql-server
```

#### Installing vim
```
$ sudo apt-get install vim
```

#### Open mysql connection to the World 
* create `allow_external.conf` file
* `$ sudo vim /etc/mysql/conf.d/allow_external.cnf`
* write the following content

```
[mysqld]
      bind-address = 0.0.0.0
```

#### Restarting mysql
```
$ sudo service mysql restart
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

#### Updating apt-get
```
$ sudo apt-get update
```

#### Installing tomcat7 and mysql-client
```
$ sudo apt-get install tomcat7 mysql-client
```

#### Open web address to check if everything is ok
```
http://192.168.33.12:8080
```

Configuring SSL
--------------------

#### Configuring SSL conector
```
$ cd /var/lib/tomcat7/conf
$ sudo keytool -genkey -alias tomcat -keyalg RSA -keystore .keystore
```

#### Enabling SSL conector into Tomcat
```
$ sudo vim /var/lib/tomcat/conf/server.xml
```

#### Remove comments from the following content
```xml
<Connector port="8443" protocol="HTTP/1.1" SSLEnabled="true"
               maxThreads="150" scheme="https" secure="true"
               clientAuth="false" sslProtocol="TLS" />
```

#### Refresh server.xml with the keystore file and password
```xml
<Connector port="8443" protocol="HTTP/1.1" SSLEnabled="true"
               maxThreads="150" scheme="https" secure="true"
               keystoreFile="conf/.keystore" keystorePass="secret"
               clientAuth="false" sslProtocol="TLS" />
```

#### Increasing Tomcat7 memory
```
$ sudo /etc/default/tomcat
```

#### Updating JAVA_OPTS default to 512M:
```xml
JAVA_OPTS="-Djava.awt.headless=true -Xmx512M -XX:+UseConcMarkSweepGC"
```

Deploy
------

#### Installing Git, Maven and JDK
```
$ sudo apt-get install git maven2 openjdk-6-jdk
```

#### Cloning git repository
```
$ git clone https://github.com/dtsato/loja-virtual-devops.git
```
