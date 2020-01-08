# include postfix

class profile::postfix {
    postfix::config { 'relay_domains':
        ensure  => present,
        value   => 'localhost pe2018.tspi.local',
    }
}