# Profile to configure RSyslog
class profiles::rsyslog {

  # RSyslog
  class { 'rsyslog::server': }

  # Set logrotate rule for Syslog
  logrotate::rule { 'messages':
    path         => '/var/log/syslog',
    rotate       => 10,
    rotate_every => 'day',
    postrotate   => 'systemctl restart rsyslog',
    require      => Class['profiles::logrotate'],
  }
}
