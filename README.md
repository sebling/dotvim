# Archived - this project is no longer used - see the vim-config project

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

# Notes

    Current versions disable the Rope functionality in python-mode in favor
    of jedi-vim for auto-completion. For this to work your vim must be 
    compiled with +python the the jedi python package must be available.

    You can install the jedi python package with

        pip install jedi

    The jedi python package must be available to vim, so take this into 
    consideration when working on python code within a virtual python
    environment.

