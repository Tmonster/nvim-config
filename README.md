# My personal LazyVim Config

### Extras

From memory things I have changed. 

- Default theme is desert (I like the defined borders)
- `<C-c><C-c>` is an escape from all buffers (even a terminal buffer)



# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


# Install tools

Linux

```
sudo apt update
sudo apt install -y build-essential unzip ripgrep fd-find fzf nodejs npm python3-venv python3-pip luarocks lazygit sqlite3
```
Then run 

```
:Lazy sync
:MasonToolsInstall
:TsUpdate
:checkhealth
```
