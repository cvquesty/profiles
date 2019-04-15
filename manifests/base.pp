# Base Profile that "all the things"™ need to get
class profiles::base {

  include profiles::ntp
  include profiles::ssh
  include profiles::motd

}
