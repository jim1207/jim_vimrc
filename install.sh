[ ! -L ~/.vimrc ]      && ln -ns jim_vimrc/dot_vimrc ~/.vimrc
[ ! -L ~/.vim ]        && ln -ns jim_vimrc/dot_vim ~/.vim
[ ! -L ~/.byobu ]      && ln -ns jim_vimrc/dot_byobu ~/.byobu
[ ! -L ~/.tmux.conf ]  && ln -ns jim_vimrc/dot_tmux.conf ~/.tmux.conf
[ ! -L ~/.tmuxifier ]  && ln -ns jim_vimrc/dot_tmuxifier ~/.tmuxifier

#append bashrc.jim to ~/.bashrc
str=bashrc.jim
exe=`grep $str $HOME/.bashrc`
if [ x"$exe" == x ]; then
    echo "source ~/jim_vimrc/$str" >> $HOME/.bashrc
fi

