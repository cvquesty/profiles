# Profile to set MOTD content
class profiles::motd {

  class { 'motd':
    content => 'Welcome to Questy.org',
  }

}
