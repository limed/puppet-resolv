
class resolv($search_domain = ['localhost'], $dns_servers = ['8.8.8.8', '8.8.4.4']) {

    file { "resolv.conf":
        ensure  => present,
        path    => "/etc/resolv.conf",
        owner   => root,
        group   => root,
        mode    => '0644',
        content => template("resolv/resolv.conf.erb")
    }
}
