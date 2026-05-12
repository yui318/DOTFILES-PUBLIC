# DOTFILES-PUBLIC

## emacs
```bash
mkdir -p ~/.config/emacs
ln -s "$PWD/emacs/init.el" ~/.config/emacs/init.el
# New-Item -Path "$HOME\.config\emacs\init.el" -ItemType SymbolicLink -Value "$PWD\emacs\init.el"
```