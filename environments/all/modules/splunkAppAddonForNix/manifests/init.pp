# splunk init manifest for splunkAppAddonForNix 
class splunkAppAddonForNix($install_dir='/opt/splunk/etc/apps') {
  common::tarball{ $::splunkaddonnix_tgz:
  source_path => 'file:///media/apps/',
  install_dir => $install_dir,
  pkg_tgz     => $::splunkaddonnix_tgz,
  }

  file { ["${install_dir}/Splunk_TA_nix", "${install_dir}/Splunk_TA_nix/local"]:
    ensure  => directory,
    require => Common::Tarball[ $::splunkaddonnix_tgz ]
  }

  file { "${install_dir}/Splunk_TA_nix/local/inputs.conf":
    source  => 'puppet:///modules/splunkAppAddonForNix/inputs.conf',
    require => File["${install_dir}/Splunk_TA_nix/local"]
  }
  file { "${install_dir}/Splunk_TA_nix/local/app.conf":
    source  => 'puppet:///modules/splunkAppAddonForNix/app.conf',
    require => File["${install_dir}/Splunk_TA_nix/local"]
  }

}
