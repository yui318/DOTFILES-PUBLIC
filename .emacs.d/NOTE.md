## References

- [2020年代のEmacs入門](https://emacs-jp.github.io/tips/emacs-in-2020)
- []()



init.elが$HOME\.emacs.dではなく$HOME\AppData\Roaming\.emacs.dが読まれていた。
M-: user-init-fileでinit.elの位置を確認できる


```powershell
$REPOSITORY_PATH = "$HOME\dotfiles" # replace your path
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\.emacs.d" -Target "$REPOSITORY_PATH\.emacs.d"
```