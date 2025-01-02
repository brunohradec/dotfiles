# Dotfiles

## neovim config

Copy the `nvim` directory into `~/.config/` directory.

For confiured LSP intergations to work, following LSPs need to be installed:
```shell
# Lua:
brew install lua-language-server

# Python:
npm install -g pyright

# Yaml:
npm install -g yaml-language-server

# Bash:
npm install -g bash-language-server

# Typescript:
npm install -g typescript-language-server typescript

# HTML, CSS, JSON, eslint:
npm install -g vscode-langservers-extracted
```

Optional: for the icons in extensions like `nvim-tree` to work, you need a patched font supporting the icons (one of the nerd fonts for example).

## ghostty config

Copy the `ghostty` directory into `~/.config/` directory.


