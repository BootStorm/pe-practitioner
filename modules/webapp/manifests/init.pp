class webapp (
  $root_pwd = $webapp::params::root_pwd,
  $wordpress_usr = $webapp::params::wordpress_usr,
  $wordpress_pwd = $webapp::params::wordpress_pwd,
  $wordpress_docroot = $webapp::params::wordpress_docroot,
) inherits webapp::params {

  # include mysql
  include apache

  package { 'wget':
    ensure => installed,
  }

  #setup mysql
  class { '::mysql::server':
    root_password           => $root_pwd,
    remove_default_accounts => true,
  }

  #create the database
  mysql::db { 'wordpress':
    user     => $wordpress_usr,
    password => $wordpress_pwd,
    host     => 'localhost',
    grant    => ['ALL'],
  }

  # setup apache
  # class { 'apache': }

  #create the vhost
  apache::vhost { 'wordpress.puppetlabs.vm':
    port    => '80',
    docroot => $wordpress_docroot,
  }

}

