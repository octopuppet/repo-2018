class profile::balance {
    package => { 'haproxy':
        ensure => present,
        }
    service => { 'haproxy':
        ensure => running,
        }
}