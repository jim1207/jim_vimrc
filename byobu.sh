#!/bin/bash
set -e

mkdir -p byobu_src
cd byobu_src

#byobu
wget https://launchpad.net/byobu/trunk/5.104/+download/byobu_5.104.orig.tar.gz
tar zxvf byobu_5.104.orig.tar.gz
cd byobu-5.104
./configure && make && make install
cd ..

#gcc
yum install -y gcc ncurses-devel

#screen
wget http://ftp.gnu.org/gnu/screen/screen-4.3.1.tar.gz
tar zxvf screen-4.3.1.tar.gz
cd screen-4.3.1
./configure && make && make install

cd ../../
rm -rf byobu_src

