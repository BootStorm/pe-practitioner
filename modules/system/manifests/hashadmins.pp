class system::hashadmins {
  require mysql::server

  Mysql_user {
    ensure        => present,
    password_hash => mysql_password('puppetlabs'),
  }

  mysql_user { ['zack@localhost', 'monica@localhost', 'luke@localhost']: 
  }

  mysql_user { 'ralph@localhost':
    ensure => absent,
  }

  mysql_user { 'brad@localhost':
    password_hash => mysql_password('puppet'),
  }
}

