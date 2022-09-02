# Base Profile that "all the things"™ need to get
class profiles::base {

  include profiles::apache
  include profiles::ntp
  include profiles::ssh
  include profiles::motd
  include profiles::logrotate
  include profiles::rsyslog
  include profiles::puppetweb

}
