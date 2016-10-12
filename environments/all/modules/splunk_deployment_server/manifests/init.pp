# Splunk deployment server manifest
class splunk_deployment_server {
  file { '/opt/splunk/etc/system/local/serverclass.conf':
    ensure  => 'file',
    source  => 'puppet:///modules/splunk_deployment_server/serverclass.conf',
    require => Package['splunk'],
    notify  => Service['splunk']
  }
}
