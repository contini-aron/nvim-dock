# nvim-dock
an easy way to containerize your neovim config to run it everywhere

### Requirements
you need a working docker setup to run the build phase

### How to use it
simply clone the repo or download the Dockerfile directly.

put your neovim init.lua or init.vim into the same directory as the dockerfile alongside with a config.sh shell script that does the preliminary configuration

run docker build :)

### OS version
Alpine linux is the base container choice
