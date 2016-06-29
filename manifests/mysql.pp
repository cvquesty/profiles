# Sample profile to configure MySQL
#
class profiles::mysql {

  class { '::mysql::server':
    root_password           => 'superduper',
    remove_default_accounts => true,
  }

}
