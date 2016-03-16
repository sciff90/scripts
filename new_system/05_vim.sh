# get latest package list
sudo apt-get update

# vim prerequisites
sudo apt-get install liblua5.1-dev luajit libluajit-5.1-dev libperl-dev libncurses5-dev libgnome2-dev

# fix lua includes
sudo mkdir /usr/include/lua5.1/include
sudo ln -s /usr/include/luajit-2.0 /usr/include/lua5.1/include

# clone vim from github
git clone https://github.com/vim/vim.git $HOME/git/vim

cd $HOME/git/vim

./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto \
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-cscope

# make vim
make
sudo make install

# get plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy vimrc from config files
cp $HOME/git/config/vim/vimrc $HOME/.vimrc
