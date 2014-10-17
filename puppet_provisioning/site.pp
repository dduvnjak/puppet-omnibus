node "precise" {
  package {"ruby": ensure => installed}
  package {"ruby-dev": ensure => installed}
  package {"git": ensure => installed}
}

node "centos6" {
  package {"ruby": ensure => installed}
  package {"git":  ensure => installed}
}

  package { 'bundler':
    ensure => installed,
    provider => 'gem',
    require => Package['ruby'],
  }
