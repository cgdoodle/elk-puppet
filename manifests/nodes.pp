node 'test1' {
  # == Class:
  #
  class  { 'puppet-learn'
    # resources
    port=> 8080,
    vhostName => 'test1'
  }
}
