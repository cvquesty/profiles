# Testing activeperl install
class profiles::activeperl (
  String $aperl_version,
  String $aperl_file,
  Array $packages,
){

  # Install Support packages
  package { $packages:
    ensure => 'installed',
  }

  # Create Staging Directory
  class { 'staging':
    path  => '/usr/local/src/',
    owner => 'puppet',
    group => 'puppet',
  }

  # Stage the Installer
  staging::file { $aperl_file:
    source => "http://downloads.activestate.com/ActivePerl/releases/${aperl_version}/${aperl_file}",
  }

  # Extract the Installer
  staging::extract { $aperl_file:
    target  => '/usr/local/src',
    creates => "/usr/local/src/${aperl_file}",
    require => Staging::File[ $aperl_file ],
  }

}
