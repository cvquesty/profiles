# Sample Profile for class
#
class profiles::lampstack {

  include [ '::profiles::apache' ]
  include [ '::profiles::mysql' ]
  include [ '::profiles::php' ]

}
