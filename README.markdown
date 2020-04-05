# A productivity set up for Vim

Here is a set up for using Vim for writing and for tracking tasks. It can work as is or be used to help you set up your own Vim setup.

## Plugins used

* [tpope/vim\-pathogen: pathogen\.vim: manage your runtimepath](https://github.com/tpope/vim-pathogen)
* [plasticboy/vim\-markdown: Markdown Vim Mode](https://github.com/plasticboy/vim-markdown)
* [junegunn/goyo\.vim: Distraction\-free writing in Vim](https://github.com/junegunn/goyo.vim)
* [reedes/vim\-pencil: Rethinking Vim as a tool for writing](https://github.com/reedes/vim-pencil)

# Getting started

This set up is designed to be used with a brand new set up. Switch to your home directory (~/) and execute:

    git clone --recurse-submodules https://github.com/mrrcollins/productivevim.git

And then link to the vimrc file:

    ln -s .vim/vimrc .vimrc

# Updating

Run `git submodule update --remote` in .vim
