include system
include splunkforwarder
class {'splunk_app_addon_for_nix':
  require     => Package['splunkforwarder'],
  install_dir =>'/opt/splunkforwarder/etc/apps/',
  notify      => Service['splunkforwarder']
}
class {'splunk_outputs':
  type => 'splunkforwarder'
}
include httpd
include loadgen
