# Base Profile that "all the things"™ need to get
class profiles::base {

  include profiles::ntp
  include profiles::logrotate
  include profiles::motd
  include profiles::rsyslog
  include profiles::ssh

}
