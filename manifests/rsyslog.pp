# Profile to configure RSyslog
class profiles::rsyslog {

  # Rsyslog
  include rsyslog::config

  # Set logrotate rule for Syslog
  logrotate::rule { 'messages':
    path         => '/var/log/syslog',
    rotate       => 10,
    rotate_every => 'day',
    postrotate   => 'systemctl restart rsyslog',
    require      => Class['profiles::logrotate'],
  }
}
