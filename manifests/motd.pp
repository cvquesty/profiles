# Profile to manage the MOTD
class profiles::motd (
  String $message,
) {
  class { 'motd':
    content => $message,
  }
}
