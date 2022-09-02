# Profile to manage PuppetBoard Installation
class profiles::puppetboard {

  include profiles::apache

  class { 'puppetboard':
    python_version    => '3.6',
    reports_count     => '50',
    manage_virtualenv => true,
  }

  class { 'puppetboard::apache::vhost':
    vhost_name => 'puppetboard.questy.org',
    port       => '80',
  }

}
