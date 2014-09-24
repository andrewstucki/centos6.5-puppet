class hello-world {
    file { '/tmp/hello-world' :
        content => "Hi there from puppet!"
    }
}