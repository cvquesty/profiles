# Vhost for new website
#
class profiles::development_puppetlabs_vm {

$webport = hiera('webport')

  apache::vhost { 'development.puppetlabs.vm':
    port    => $webport,
    docroot => '/var/www/html/development_puppetlabs_vm',
  }

}
