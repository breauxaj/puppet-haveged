define haveged::service (
  $ensure,
  $enable
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'haveged',
  }

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }

}
