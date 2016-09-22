# Test class for myusers
#
class profiles::myusers {

  myusers::create::user { 'bob':
    user   => 'bob',
    system => 'localhost',
  }

  myusers::grant::readwrite { 'bob':
    dbauth   => 'root',
    dbauthpw => 'rootpw',
    user     => 'bob',
    password => 'bobpass',
    database => 'foodata',
    location => 'localhost',
    require  => Myusers::Create::User[ 'bob' ],
  }

}
