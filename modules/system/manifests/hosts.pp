class system::hosts {

  host { 'localhost':
    ensure       => 'present',
    host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
    ip           => '127.0.0.1',
    target       => '/etc/hosts',
  }

  host { 'pe-practitioner':
    ensure => 'present',
    ip     => '192.168.1.155',
    target => '/etc/hosts',
  }
  
  host { 'pe-server':
    ensure       => 'present',
    host_aliases => ['puppet'],
    ip           => '192.168.1.160',
    target       => '/etc/hosts',
  }

  resources { 'host':
    purge => true,
  }

}
