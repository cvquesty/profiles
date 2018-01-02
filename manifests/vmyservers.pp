# Venmo MySQL Server Profile
#
class profiles::vmyservers {

  include vmyusers::mysql

  vmyusers::create::user { $name:
    dbauth   => 'root',
    dbauthpw => 'rootpw',
    user     => 'bob',
    password => 'bobpw',
    location => 'localhost',
  }

#  vmyusers::delete::user { $name:
#    dbauth   => 'root',
#    dbauthpw => 'rootpw',
#    user     => 'bob',
#  }

  vmyusers::grant::readonly { $name:
    dbauth   => 'root',
    dbauthpw => 'rootpw',
    user     => 'bob',
    password => 'bobpw',
    database => 'bobdb',
    location => 'localhost',
  }

}
