## References

- [2020年代のEmacs入門](https://emacs-jp.github.io/tips/emacs-in-2020)
- [Leaf DOCS](https://elpa.gnu.org/packages/leaf.html)



init.elが$HOME\.emacs.dではなく$HOME\AppData\Roaming\.emacs.dが読まれていた。
M-: user-init-fileでinit.elの位置を確認できる


```powershell
$REPOSITORY_PATH = "$HOME\dotfiles" # replace your path
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\.emacs.d" -Target "$REPOSITORY_PATH\.emacs.d"
```


# AVY
vscodeにもJumpyやAce Jumpというものがあるらしいがこの記事が面白かった。
https://emacs-jp.github.io/tips/avy-can-do-anything
自分もこういう記事書きたい

```el
(leaf avy
  :ensure t
  :bind
  (("C-:" . avy-goto-char-timer)
   ;;("C-*" . avy-resume)
   ;; ("M-g M-g" . avy-goto-line)
   )
  :config
  (leaf avy-zap
    :ensure t
    :bind
    ([remap zap-to-char] . avy-zap-to-char)))
```