# Sample PHP profile for class example
#
class profiles::php {

  class { 'php': }

  php::module { 'mysql': }

}
