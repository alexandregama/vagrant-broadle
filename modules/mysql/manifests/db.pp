   
define mysql::db($schema, $user = $title, $password){
   Class['mysql::server'] -> Mysql::Db[$title]

   exec { "loja-schema":
      unless  => "mysql -uroot loja_schema",
      command => "mysqladmin -uroot create loja_schema",
      path    => "/usr/bin/",
      require => Service["mysql"],
   }

    exec { "loja-user":
       unless  => "mysql -uloja -plojasecret loja_schema",
       command => "mysql -uroot -e \"GRANT ALL PRIVILEGES ON \
                                     loja_schema.* TO 'loja'@'%' \
                                     IDENTIFIED BY 'lojasecret';\"",
       path    => "/usr/bin/",
       require => Exec["loja-schema"],
   }
}

