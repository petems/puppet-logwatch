# Private class
#
class logwatch::params {

  $output         = $::osfamily ? {
    'RedHat' => 'unformatted',
    default  => 'stdout',
  }
  $format         = $::osfamily ? {
    'RedHat' => 'text',
    default  => 'test',
  }
  $mail_to        = [ 'root' ]
  $mail_from      = 'Logwatch'
  $range          = 'Yesterday'
  $detail         = 'Low'
  $service        = [ 'All' ]
  $package_ensure = 'present'
  $package_name   = 'logwatch'

}
