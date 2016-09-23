# Venmo MySQL Server Profile
#
class profiles::vmyservers {

  include vmyusers::mysql

  vmyusers::create::user { $name:
    dbauth    => 'root',
    dbauthpw  => 'rootpw',
    user      => 'bob',
    passsword => 'bobpw',
    database  => 'bobdb',
    location  => 'localhost',
  }

}
