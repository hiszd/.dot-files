# .dot-files

## Setup

To configure this on a new device run the following script:
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git clone --bare https://github.com/hiszd/.dot-files $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```
