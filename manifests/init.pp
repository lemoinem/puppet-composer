class composer {
    include php

    apt::ppa { 'ppa:duggan/composer': }

    package {'php5-composer':
        require => Apt::Ppa['ppa:duggan/composer'],
    }

    file {'/usr/local/bin/composer.phar':
        ensure => absent,
    }

    exec { "composer-update":
        command     => 'composer selfupdate',
        environment => ["COMPOSER_HOME=/tmp"],
        unless      => "composer -V | grep -qF '${composer_latest_version}'",
        require     => Package['php5-composer'],
    }
}
