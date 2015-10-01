class ordering::mysql {

  class { '::mysql::server':
    root_password => 'password123',
  }

  class { '::mysql::bindings':
    perl_enable => true,
    php_enable  => true,
  }

  contain '::mysql::server'
  contain '::mysql::bindings'
}

