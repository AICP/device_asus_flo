Fixing 'lz4c' not found:

Due to new lossless kernel compression (LZ4), the lz4c binary is needed until properly implemented in the rom tree. This can be installed by following the steps below:

wget http://lz4.googlecode.com/files/lz4-r112.tar.gz
tar -xf lz4-r112.tar.gz
cd lz4-r112
make
sudo make install
