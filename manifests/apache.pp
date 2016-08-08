# Example Profile for Apache
#
class profiles::apache {

  class { '::apache': }
  class { '::epel': }
  class { '::apache::mod::passenger': }

  apache::vhost { 'localhost':
    priority => '10',
    port     => '80',
    docroot  => '/opt/forge/public',
    logroot  => '/opt/forge/log',
  }
}
