# Install and manage Apache Server
class profiles::apache {

  class { 'apache': }

  logrotate::rule { 'apache':
    path          => '/var/log/apache2/*.log',
    rotate        => 14,
    mail          => 'root',
    size          => '100M',
    sharedscripts => true,
    postrotate    => '/usr/bin/systemctl reload apache2',
  }

}
