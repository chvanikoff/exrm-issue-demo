mix release
mkdir -p tmp/myapp/releases/0.0.2
cp rel/myapp/myapp-0.0.2.tar.gz tmp/myapp/releases/0.0.2/myapp.tar.gz
cd tmp/myapp
bin/myapp upgrade "0.0.2"
bin/myapp attach