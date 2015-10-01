class hosts {

  package { 'pe-puppetdb--termini':
    ensure => installed,
  }

  Host {
    ensure => present,
    target => '/etc/hosts',
  }

  host { 'localhost':
    host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
    ip           => '127.0.0.1',
  }

  @@host { $hostname:
    ip  => $ipaddress,
    tag => 'classroom',
  }
  
  host { 'pe-server':
    host_aliases => ['puppet'],
    ip           => '192.168.1.160',
  }

  Host <<| tag == 'classroom' |>>

  resources { 'host':
    purge => true,
  }

}
