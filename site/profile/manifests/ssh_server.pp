class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCufNsJWizc6q7rO1PuiQisn32zavc8OmjHyljCbrdq10c7hQmag1nlA03/wACmS1Qle4gSFllzitrdTeXxJuGZ3b/JJbiD5eimS4Rd3XO+o94icU3TF20JxShdHlxMfbeKHhQS6xiliqiyhjMRSN6yNmCv+fFzFd+Oba8YJ39X2sahqIMxSzqG+C9iPF2guxECtDk/8N5ndNVus/4V/w0YTexxBAOg+lRaJ5yKphb6cgn/f/9SjVuQVUvocd3vE4yk71esHagTcl7g1wfqEI3cTwoF6rAS3IrGzH+t+1XCiSVqUmk3vG7eJyhXVPCRujpWnx5zCBhpiI5VCOJ+FcrT',
  }  
}
