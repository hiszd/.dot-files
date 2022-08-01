# .dot-files

### BASHRC MOVE

To execute the .bashrc from ~/.config/bash/ you need to add the following to your /etc/bash.bashrc file:<br>
```
if [ -s "${XDG_CONFIG_HOME:-$HOME/.config}/bash/bashrc" ]; then
    . "${XDG_CONFIG_HOME:-$HOME/.config}/bash/bashrc"
fi
```
