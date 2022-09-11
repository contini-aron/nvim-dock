# nvim-dock
an easy way to containerize your neovim config to run it everywhere

### Requirements
you need a working docker setup to run the build phase

### How to use it
clone the repo.

N.B.
the docker file will copy everything that is into the config folder into /home/user/.config and then try to run a config.sh script to run the preliminary steps (e.g. cloning your config repo ecc.) so modify accordingly

run docker build

### EXAMPLE CONFIG
the default config.sh is the one i use for my config, it clones my "contini-aron/nvim-conf" repository

### OS
Alpine linux is the base container choice to maintain the container as light as possible