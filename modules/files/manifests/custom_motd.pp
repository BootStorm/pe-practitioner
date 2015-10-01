define files::custom_motd (
  $message = '',
  $order = '50') {

  concat::fragment { "${name}":
    target  => '/etc/motd',
    content => $message,
    order   => $order,
  }
}
