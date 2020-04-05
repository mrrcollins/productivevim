# A productivity set up for Vim

Here is a set up for using Vim for writing and for tracking tasks. It can work as is or be used to help you set up your own Vim setup.

I can't take credit for any of these great plugins.

## Plugins used

* [tpope/vim\-pathogen: pathogen\.vim: manage your runtimepath](https://github.com/tpope/vim-pathogen)
* [plasticboy/vim\-markdown: Markdown Vim Mode](https://github.com/plasticboy/vim-markdown)
* [junegunn/goyo\.vim: Distraction\-free writing in Vim](https://github.com/junegunn/goyo.vim)
* [reedes/vim\-pencil: Rethinking Vim as a tool for writing](https://github.com/reedes/vim-pencil)
* [cweagans/vim\-taskpaper: Comprehensive taskpaper support for Vim](https://github.com/cweagans/vim-taskpaper)

# Getting started

This set up is designed to be used with a brand new set up. Git clone the repo with submodules in to `~/.vim`

    git clone --recurse-submodules https://github.com/mrrcollins/productivevim.git ~/.vim

And then link to the vimrc file:

    ln -s ~/.vim/vimrc ~/.vimrc

# Usage

When writing, .markdown and .md files will automatically put Vim into a word processing mode. Control-g toggles Goyo, which will put Vim into a distraction free environment.

If you want to journal, `xdate` will expand to the date and time, while `xtime` will expand to the current time. You can adjust the format in the `vimrc` file.

For tasks, the [Taskpaper plugin](https://github.com/cweagans/vim-taskpaper) is active on files that end in .taskpaper. 

# Updating

    cd ~/.vim
    git pull
    git submodule update --remote

