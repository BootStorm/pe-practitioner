class ordering::epel {

  include epel

  Package<| |> {
    require => Class['epel'],
  }

}
