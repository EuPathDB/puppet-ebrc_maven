# == Class: ebrc_maven
#
# Manages Maven installation for given $package name
#
# === Parameters
#
#  $package - name of maven package to install, e.g. maven-3.3.3
#  $maven_home - full path to MAVEN_HOME (aka $M2), e.g. /usr/java/maven-3.3.3
#
# === Requirements
#
# There are no prerequisites for installing this module, however a javac
# executable is required to run mvn. So be sure to also install Java somehow.
#
# === Authors
# Mark Heiges <mheiges@uga.edu>
#
class ebrc_maven (
  $packages,
  $maven_home,
) {

  package { $packages :
    ensure => installed,
  }

  file { '/etc/profile.d/maven.sh':
    ensure  => present,
    content => template('ebrc_maven/maven.sh'),
    require => Package[$packages],
  }

}
