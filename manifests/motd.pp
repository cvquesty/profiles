# Profile to set MOTD content
class profiles::motd {

  $motd_message = lookup('profiles::motd::message')

  class { 'motd':
    content => $motd_message,
  }

}
