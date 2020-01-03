class profile::haproxy {
    package => { 'haproxy':
        ensure => present,
        }
    service => { 'haproxy':
        ensure => running,
        }
}