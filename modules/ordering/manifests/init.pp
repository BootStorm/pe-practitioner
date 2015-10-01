class ordering {

  stage { 'post-run': }

  Stage['main'] -> Stage['post-run']

  class { 'ordering::updatedb': stage => 'post-run' }

  include ordering::epel
  include ordering::mysql

  notify { 'This should come after the entire MYSQL class is enforced':
    require => Class['ordering::mysql'],
  }

}

