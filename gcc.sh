#!bin/bash
wget http://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.gz
tar zxf gcc-7.3.0.tar.gz
cd gcc-7.3.0
sudo yum -y install bzip2
wget https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.16.1.tar.bz2
wget https://gcc.gnu.org/pub/gcc/infrastructure/mpfr-3.1.4.tar.bz2
wget https://gcc.gnu.org/pub/gcc/infrastructure/mpc-1.0.3.tar.gz
wget https://gcc.gnu.org/pub/gcc/infrastructure/gmp-6.1.0.tar.bz2
./configure --disable-multilib --enable-languages=c,c++
make -j 4
sudo make install
