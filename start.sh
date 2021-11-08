#!/bin/sh

set -e
cd /var/installation-files/

curl --output openssl-3.0.0.tar.gz https://www.openssl.org/source/openssl-3.0.0.tar.gz
tar -xf openssl-3.0.0.tar.gz
cd ./openssl-3.0.0

chmod +x config
./config
make
#make test
make install

ln -s /usr/local/lib64/libssl.so.3 /usr/lib/libssl.so.3
ln -s /usr/local/lib64/libcrypto.so.3 /usr/lib/libcrypto.so.3
#ldconfig