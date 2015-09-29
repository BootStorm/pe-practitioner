class review (
  $user = 'review'
) {

  file { '/etc/shells':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/review/shells",
  }

  file { '/etc/motd':
    ensure  => file,
    content => template('review/motd.erb'),
  }

  user { $user:
    ensure => present,
    shell  => '/bin/csh',
  }
}


