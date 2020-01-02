class apache::install {
    package { 'httpd':
        ensure => present,
        before => File['index.html'],
        }
    file { '/var/www/index.html':
        ensure  => 'file',
        content => 'first test',
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        }
    service { 'httpd':
        ensure => running,
        #subscribe => File['httpd.conf'],
        }
}

class firewall::disable {
    service {'firewalld':
        ensure => stopped,
        }
}