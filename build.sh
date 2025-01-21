#!/bin/bash

# Install Dart SDK
apt-get update
apt-get install -y apt-transport-https
sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
apt-get update
apt-get install -y dart

# Generate documentation
dart doc