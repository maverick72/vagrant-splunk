# splunk outputs manifest
class splunk_outputs ($type='splunkforwarder'){
  file { '/opt/$type/etc/system/local/outputs.conf':
    require => Package[$type],
    content => template('splunk_outputs/outputs.conf.erb'),
    notify  => Service['splunk']
  }
}
