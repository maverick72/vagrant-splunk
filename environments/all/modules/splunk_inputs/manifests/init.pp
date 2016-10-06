# splunk init manifest for inputs template generation
class splunk_inputs {
  file { '/opt/splunk/etc/system/local/inputs.conf':
    require => Package['splunk'],
    content => template('splunk_inputs/inputs.conf.erb'),
    notify  => Service['splunk']
  }
}
