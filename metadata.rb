# see https://github.com/rchampourlier/vagrant-stacks/blob/master/cookbooks/set_locale/recipes/default.rb
name             'set_locale'
maintainer       'The Garage'
maintainer_email 'ryan_sonnek@uhc.com'
license          'All rights reserved'
description      'Installs/Configures phpapp'
description      "A cookbook to set locales to en_US-UTF8 to enable using UTF8 databases with PostgreSQL server"
long_description "Updates the locales by setting LANGUAGE, LANG and LC_ALL environment variables, generating locales with locale-gen and running dpkg-reconfigure"
version          '0.1.0'

recipe "set_locale", "configures environment"