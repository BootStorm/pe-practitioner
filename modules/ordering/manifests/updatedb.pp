class ordering::updatedb {

  package { 'mlocate':
    ensure => present,
  }->

  exec { '/usr/bin/updatedb': }

}

