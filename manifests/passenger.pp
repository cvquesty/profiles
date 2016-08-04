# Sample profile to load passenger
#
class profiles::passenger {

  package { 'rubygems':
    ensure => 'installed',
  }

  package { 'ruby-devel':
    ensure => 'installed',
  }

  package { 'gcc':
    ensure => 'installed',
  }

  package { 'gcc-c++':
    ensure => 'installed',
  }

  package { 'zlib-devel':
    ensure => 'installed',
  }

  class { '::passenger':
    require => Package['rubygems'],
  }
}
