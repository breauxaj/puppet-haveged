# Class: haveged
#
# This class installs the haveged package
#
# Parameters:
#
#  ensure: (default latest)
#    Determine the state of the packages
#
# Actions:
#   - Installs the haveged package
#
# Requires:
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'haveged':
#      ensure => 'latest'
#    }
#
#  To remove the installation, use:
#
#    class { 'haveged':
#      ensure => 'absent'
#    }
#
class haveged (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'haveged',
  }

  package { $required: ensure => $ensure }

}
