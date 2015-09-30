class system::hashadmins {
  require mysql::server

  $mysql_defaults = {
    ensure        => present,
    password_hash => mysql_password('puppetlabs'),
  }

  $mysql_users = {
    'zack@localhost'   => {},
    'monica@localhost' => {},
    'luke@localhost'   => {},
    'ralph@localhost'  => {
      ensure => absent,
    },
    'brad@localhost'   => {
      password_hash => mysql_password('puppet'),
    },
  }

  create_resources('mysql_user', $mysql_users, $mysql_defaults) 

}

