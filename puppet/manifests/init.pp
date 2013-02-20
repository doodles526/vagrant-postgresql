group {"puppet":
        ensure => 'present'
}


class { 'postgresql::server': 
        config_hash => {'postgres_password' => 'gwm',
                        'ip_mask_allow_all_users' => '10.0.1.0/24',
                        'listen_addresses' => '*'}
}

postgresql::db {   'gwm':
        user => 'gwm',
        password => 'gwm',
}
