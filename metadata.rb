# Encoding: utf-8
name              'yum-rightscale'
maintainer        'Salesforce Pardot'
maintainer_email  'the.melonhead@gmail.com'
license           'Apache 2.0'
description       'Configures various yum components for Rightscale-based CentOS 5.x EC2 AMIs'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '1.0'
recipe            'yum-rightscale', 'Manages yum configuration'

depends 'yum'
depends 'chef-sugar'

supports 'centos'