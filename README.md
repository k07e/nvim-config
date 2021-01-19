# nvim-config

## Get started

### One file install (WIP)

```
wget https://raw.githubusercontent.com/k07e/nvim-config/master/init.vim
nvim -u init.vim
```

### Use as default

```
git clone https://github.com/k07e/nvim-config.git ~/.cache/k07e--nvim-config
mkdir -pv ~/.config/nvim
export NVIM_CONFIG_INITRC=~/.config/nvim/init.vim
ln -fsv ~/.cache/k07e--nvim-config/init.vim "$NVIM_CONFIG_INITRC"
nvim -u "$NVIM_CONFIG_INITRC"
```

You can set alias: `alias nvim='nvim -u "$NVIM_CONFIG_INITRC"'`

### Test to try

```
git clone https://github.com/k07e/nvim-config.git
cd nvim-config
ln -fsv .nvim-config .
nvim -u init.vim
```

## License

MIT
