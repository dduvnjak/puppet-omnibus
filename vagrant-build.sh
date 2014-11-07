#!/usr/bin/env bash

cp -r /vagrant /tmp/puppet-omnibus
cd /tmp/puppet-omnibus
bundle install
fpm-cook package recipe187.rb