# Profile to set MOTD content
class profiles::motd (
  String $motd_message,
)  {

  class { 'motd':
    content => $motd_message,
  }
}
