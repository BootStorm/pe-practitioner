class webapp::params {

  case $::osfamily {
    'RedHat': {
      $docroot = '/var/www/html'
    }
    'Debian': {
      $docroot = '/var/www'
    }
    default: {
      fail("Module ${module_name} is not supported by ${::osfamily}")
    }
  }

  $root_pwd = 'password123'
  $wordpress_usr = 'wordpress'
  $wordpress_pwd = 'password'
  $wordpress_docroot = "${docroot}/wordpress"

}

