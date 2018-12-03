node default {
  file {'/root/REAMDE':,
    ensure => file,
    content => 'this is a readme',
  }
}
