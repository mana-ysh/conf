#!/sh/bash

mkdir -p $HOME/.config/nvim/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
chmod 755 installer.sh
./installer.sh $HOME/.config/nvim/dein
ln -s dein.vim $HOME/.config/nvim
