# Profile to configure SSH
class profiles::ssh {

  $sshport = lookup('profiles::ssh::sshport')
  $options = lookup('profiles::ssh::options')

  class { 'ssh':
    storeconfigs_enabled => false,
    server_options       => $options,
  }

}
