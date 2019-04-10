# Profile to configure SSH
class profiles::ssh {

  $options = lookup('profiles::ssh::options')

  class { 'ssh':
    storeconfigs_enabled => false,
    server_options       => $options,
  }

}
