# ebrc_maven

## Overview

Installs one or more Maven packages for EuPathDB BRC.

## Module Description

Maven managment per EuPathDB BRC's specifications, with focus on official 
support of WDK-based websites.

Installs one or more maven packages and drop a profile in /etc/profile.d/ to set
`$M2_HOME` and `$M2`, and include `$M2_HOME/bin` in `$PATH`.

## Setup

### Setup Requirements

The desired RPMs must be in EuPathDB's yum repository and the YUM 
repository configured on the node.

## Usage

`include ::ebrc_maven`

## Hiera parameters

  - `ebrc_maven::packages` - list of packages to install. Use values suitable for 'yum install"
  
        ebrc_maven::packages:
        - jdk-1.7.0_25-fcs

  - `ebrc_maven::maven_home` - The default value of `$M2_HOME`. Used in `/etc/profile.d/maven.sh` to set `M2_HOME` and update `PATH` bash environment variables.

## See also

`

## Limitations

Requires a RHEL-based Linux distro. Only tested on CentOS.
