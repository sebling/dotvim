# Installation

    Save the current contents of your ~/.vim directory and your ~/.vimrc file

    git clone git://github.com/sebling/dotvim.git ~/.vim

    Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc    # optional, currently not used

    Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

# Maintenance

    Located in the ~/.vim directory are two scripts

    - vim-install-plugin
    - vim-update-plugins

    *vim-install-plugins* will install a git repository as a submodule
    Example usage:

        ~/.vim/vim-install-plugin git-url proj-name

    *(look at the source for complete usage information)*

    proj-name is a name of your choosing which will become a sub-directory
    under ~/.vim/bundle

    *vim-update-plugins* will bring all installed submodules up to date
    Example usage

        ~/.vim/vim-update-plugins



