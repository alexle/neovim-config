# Alex's Neovim Config

## Setup

### Keymap Architecture

```
keybindings.json        → VSCode intercepts Alt/Cmd/Ctrl before neovim
lua/core/keymaps.lua    → terminal nvim core (leader basics, nav, splits)
lua/core/vscode-keymaps.lua → VSCode-only (leader+LSP via vscode.action)
lua/plugins/snacks.lua  → terminal LSP, git, pickers (alt-chars, g-motions)
```

- **Alt/Cmd/Ctrl keys** must be in `keybindings.json` (VSCode intercepts them)
- **Leader sequences** go in lua files (neovim processes these)
- **Plugin keys** stay in plugin files (lazy.nvim uses `keys` for lazy-loading)

### VSCode Keybindings Symlink

VSCode keybindings live in this repo at `vscode/keybindings.json` and are symlinked to VSCode's config path. This keeps nvim and VSCode keybindings version-controlled together.

```bash
ln -sf ~/.config/nvim/vscode/keybindings.json \
  ~/Library/Application\ Support/Code/User/keybindings.json
```

To verify: `ls -la ~/Library/Application\ Support/Code/User/keybindings.json` should point to this repo.

## Modifications

### LazyGit Edit In Process

```
vim ~/Library/Application\ Support/lazygit/config.yml
```

Add the following:

```
os:
  edit: "nvim {{filename}}"
  editAtLine: "nvim --line={{line}} {{filename}}"
  editAtLineAndWait: "nvim --block --line={{line}} {{filename}}"
  editInTerminal: true
  openDirInEditor: "nvim {{dir}}"

promptToReturnFromSubprocess: false
```
