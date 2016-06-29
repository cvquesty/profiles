# Example Profile for Apache
#
class profiles::apache {

  class { '::apache':
    default_vhost => false,
  }

  class { '::apache::mod::php': }

}
