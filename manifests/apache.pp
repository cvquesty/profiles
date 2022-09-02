# Install and manage Apache Server
class profiles::apache {

  class { 'apache':
    default_vhost => false,
  }

}
