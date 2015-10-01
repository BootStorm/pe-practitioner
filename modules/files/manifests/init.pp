class files {

  file { '/etc/cron.allow':
    ensure => file,
  }->
  file_line { '/etc/cron.allow':
    ensure => present,
    line   => 'root',
    path   => '/etc/cron.allow',
  }

  file_line { '/etc/cron.deny':
    ensure => present,
    line   => '*',
    path   => '/etc/cron.deny',
  }

  $motd_file = '/etc/motd'

  concat{$motd_file:
    owner => 'root',
    group => 'root',
  }

  concat::fragment{ 'welcome':
    target  => $motd_file,
    content => "hi there dude\n\n",
    order   => '01',
  }

  concat::fragment{ 'other stuff':
    target  => $motd_file,
    content => "other smart things to say\n\n",
    order   => '10',
  }

  concat::fragment{ 'final words':
    target  => $motd_file,
    content => "so long and thanks for all the fish\n\n",
    order   => '20',
  }

}

