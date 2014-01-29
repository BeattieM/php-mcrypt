name             "php-mcrypt"
maintainer       "Michael Beattie"
maintainer_email "beattiem@knights.ucf.edu"
license          "MIT license"
description      "Installs/Configures the mcrypt module for PHP"

version          "0.1"

supports 'ubuntu'
supports 'debian'

depends "php"

recipe 'mcrypt', 'Installs/Configures the mcrypt module for PHP'