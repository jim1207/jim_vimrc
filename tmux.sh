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
rm -rf byobu_src

#tmux
yum install -y tmux

#tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
echo 'export PATH="$HOME/.tmuxifier/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(tmuxifier init -)"' >> ~/.profile

