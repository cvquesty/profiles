# Profile to manage SSH daemon
class profiles::ssh (
  Hash $options,
) {
  class { 'ssh':
    storeconfigs_enabled => false,
    server_options       => $options,
  }
}
