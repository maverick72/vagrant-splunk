include system
include splunkforwarder
class {'splunk_app_addon_for_nix':
  install_dir =>'/opt/splunkforwarder/etc/apps/',
  require     => Package['splunkforwarder'],
  notify      => Service['splunkforwarder']
}
class {'splunk_outputs':
  type => 'splunkforwarder'
}
include httpd
include loadgen
