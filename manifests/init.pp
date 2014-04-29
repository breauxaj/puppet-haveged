class haveged (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'haveged',
  }

  package { $required: ensure => $ensure }

}
