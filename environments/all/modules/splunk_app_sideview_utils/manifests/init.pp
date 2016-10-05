# splunk init module for splunk_app_sideview_utils
class splunk_app_sideview_utils {
  common::tarball{ $::sideview_utils_tgz :
    source_path => 'file:///media/apps/',
    install_dir => '/opt/splunk/etc/apps/',
    pkg_tgz     =>  $::sideview_utils_tgz ,
    require     => Package['splunk'],
    notify      => Service['splunk']
  }
}
