# Profile to configure Puppet Website for questy.org
class profiles::puppetweb {

  include apache

  apache::vhost { 'puppet.questy.org':
    port    => 80,
    docroot => '/var/www/html/puppetweb',
    logroot => '/var/log/apache2/puppetweb',
  }

  logrotate::rule { 'puppetweb':
    path          => '/var/log/apache2/puppetweb/*.log',
    rotate        => 14,
    mail          => 'questy@puppet.questy.org',
    sharedscripts => true,
    postrotate    => '/usr/bin/systemctl reload apache2',
  }

}
