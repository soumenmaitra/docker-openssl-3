set -e
cd /var/installation-files/

curl --output openssl-3.0.0-alpha12.tar.gz https://www.openssl.org/source/openssl-3.0.0-alpha12.tar.gz
tar -xvf openssl-3.0.0-alpha12.tar.gz

cd ./openssl-3.0.0-alpha12.tar.gz

chmod +x config
./config
make
#make test
make install
