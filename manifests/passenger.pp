# Sample profile to load passenger
#
class profiles::passenger {
  class { '::passenger': }

  package { 'rubygems':
    ensure => 'installed',
  }

}
