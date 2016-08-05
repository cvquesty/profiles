# Example Profile for Apache
#
class profiles::apache {

  class { '::apache': }
  class { '::apache::mod::passenger': }

}
