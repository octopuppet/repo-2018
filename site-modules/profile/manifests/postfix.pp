include postfix

class profile::postfix {
    postfix::config { 'relay_domains':
        ensure  => present,
        value   => 'localhost dns.tspi.local',
    }
}