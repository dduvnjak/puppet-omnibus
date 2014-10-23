node "precise", "wheezy" {
  $package_list = ['ruby', 'rubygems', 'ruby-dev', 'git', 'build-essential', 'curl']
  package {$package_list: ensure => installed, before => Package['bundler']}
  exec { 'apt-update':
    command => '/usr/bin/apt-get update'
  }
  Exec['apt-update'] -> Package <| |>
}

node "centos6" {
  $package_list = ['ruby', 'rubygems', 'ruby-devel', 'git']
  package {$package_list:  ensure => installed, before => Package['bundler']}
}

package { 'bundler':
  ensure => installed,
  provider => 'gem',
}
