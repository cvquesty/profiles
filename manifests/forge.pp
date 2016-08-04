# Profile to collect together all the profiles into a 
# complete Forge
class profiles::forge {

  class { '::profiles::apache': } ->
  class { '::profiles::passenger': } ->
  class { '::profiles::forge_server': } ->
  Class[ '::profiles::forge' ]

}
