# Alex's Neovim Config

## Modifications

### LazyGit Edit In Process

```
cd vim ~/Library/Application\ Support/lazygit/config.yml
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
