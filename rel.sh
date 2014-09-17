#!/usr/bin/env sh

mix release
mkdir -p tmp/myapp
cp rel/myapp/myapp-0.0.1.tar.gz tmp/
cd tmp/myapp
tar -xf ../myapp-0.0.1.tar.gz
bin/myapp start
bin/myapp attach