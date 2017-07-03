#!/usr/bin/env bash
set -v
cd ../ruby-client
gem uninstall swagger_client
gem build swagger_client.gemspec
gem install ./swagger_client-1.0.0.gem
