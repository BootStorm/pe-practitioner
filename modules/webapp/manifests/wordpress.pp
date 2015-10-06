class webapp::wordpress {

  include webapp
  include webapp::params

  class { 'wordpress':
    
    db_user        => $webapp::wordpress_usr,
    db_password    => $webapp::wordpress_pwd,
    create_db      => false,
    create_db_user => false,
    install_dir    => $webapp::wordpress_docroot,

  }
}

