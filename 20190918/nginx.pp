class nginx {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure  => true,
    enable  => true,
    require => Package['nginx'],
  }
}