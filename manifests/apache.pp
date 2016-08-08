# Example Profile for Apache
#
class profiles::apache {

  class { '::apache': }
  class { '::epel': }
  class { '::apache::mod::passenger': }

}
