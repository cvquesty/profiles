# Vhost for new website
#
class profiles::development_puppetlabs_vm {

  apache::vhost { 'development.puppetlabs.vm':
    port    => '80',
    docroot => '/var/www/html/development_puppetlabs_vm',
  }

}
