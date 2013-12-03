name             'gateway'
maintainer       'Guilhem Lettron'
maintainer_email 'guilhem.lettron@optiflows.com'
license          'Apache 2.0'
description      'Installs/Configures gateway'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "sysctl"
depends "modules"
depends "iptables-ng"
