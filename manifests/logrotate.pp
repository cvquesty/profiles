# This profile is for running logrotate
class profiles::logrotate {

  class { 'logrotate':
    ensure => 'latest',
    config => {
      compress     => true,
      rotate       => 10,
      rotate_every => 'day',
      ifempty      => true,
    }
  }

}
