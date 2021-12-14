# nvim
About my vim(neovim) config.


# Install FZF, Ripgrep, Universal-ctags, Silver-searcher 

brew install FZF
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/Install
brew install the_silver_searcher




# Git
```
:Git add

:Git commit

:Git push

:Git pull

:Git diff

:Git log

:Git blame

Gdiffsplit

GRemove

GBrowse

:GV          # To open commit browser: 
:GV!         # will only list commits that affected the current file
:GV?         # fills the location list with the revisions of the current file
:GV          # or :GV? can be used in visual mode to track the changes in the selected lines.
```


# Find 
```
<C-n>  <C-p> next | previous
<Down> <Up>  next | previous
j      k     next | previous (in normal mode)
<CR>         go to file selection

<C-x>        go to file selection as a split
<C-v>        go to file selection as a vertical split
<C-t>        go to a file in a new tab

<C-u>        scroll up in preview window
<C-d>        scroll down in preview window

<C-c>        close telescope
<Esc>        close telescope (in normal mode)

```
