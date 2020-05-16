# devenv
Repository for personal development environments

# VIMRC on Windows
Create file in C:\Users\<USR>\_vimrc

# VIMRC on Ubuntu
Execute command 'sudo updatedb && locate vimrc' to locate vimrc
Probably it's '/usr/share/vim/vimrc' or '/etc/vim/vimrc'. 
Replace contents with repo's vimrc file by running command 'sudo cp _vimrc /usr/share/vim/vimrc'
Create dir called '~/.vim/colors'
cd into it and run wget https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim
