# Define: haveged::service
#
# This define manages the haveged service
#
# Parameters:
#
#  ensure:
#    Controls the state of the service
#
#  enable:
#    Controls the service start on boot
#
# Actions:
#   - Stops/starts the haveged service
#
# Requires:
#
# Sample Usage:
#
#  To enable the service, use:
#
#    haveged::service { 'default':
#      ensure => running,
#      enable => true
#    }
#
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
