# Dotfiles

My lean clean, portable setup using for tmux, tmuxifier, and neovim (v0.12).

## Dependencies

### Core

```bash
brew install git neovim tmux fzf ripgrep fd node python lazygit
```

### Additional requirements

- **Nerd Font**:
  ```bash
  brew install --cask font-jetbrains-mono-nerd-font
  ```

  Then set the font it in your terminal config (eg. Ghostty):
  ```bash
  font-family = "JetBrainsMonoNL Nerd Font Mono"
  ```

### Optional

For ruby workflow:
```bash
brew install ruby
gem install dip
```

## Setup

```bash
git clone --recurse-submodules https://github.com/jrupinski/dotfiles
```

If already cloned without submodules:

```bash
git submodule update --init
```

Then copy/overwrite the files where necessary.
