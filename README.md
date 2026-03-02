# Dotfiles

My lean clean, portable setup using for tmux, tmuxifier, and neovim (v0.12).

## Dependencies

### Core

```bash
brew install git neovim tmux fzf ripgrep fd node python lazygit tpm
```

After first tmux launch, install plugins with `prefix + I` (`Ctrl-s + I`).

### Additional requirements

- **Oh My Zsh**:
  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

- **zsh-vi-mode** (oh-my-zsh plugin):
  ```bash
  git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode
  ```

- **Nerd Font**:
  ```bash
  brew install --cask font-jetbrains-mono-nerd-font
  ```

  Then set the font in your terminal config (eg. Ghostty):
  ```bash
  font-family = "JetBrainsMonoNL Nerd Font Mono"
  ```

- **Bob** (neovim version manager):
  ```bash
  brew install bob
  bob install stable
  bob use stable
  ```

- **Asdf** (ruby version manager):
  ```bash
  brew install asdf
  ```

- **nvm** (Node version manager):
  ```bash
  brew install nvm
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

### Link or copy config files

Symlink (edits sync automatically):
```bash
ln -sf ~/.config/dotfiles/.zshrc ~/.zshrc
ln -sf ~/.config/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.config/dotfiles/.tmuxifier ~/.tmuxifier
ln -sfn ~/.config/dotfiles/nvim ~/.config/nvim
```

Or copy:
```bash
cp ~/.config/dotfiles/.zshrc ~/.zshrc
cp ~/.config/dotfiles/.tmux.conf ~/.tmux.conf
cp -r ~/.config/dotfiles/.tmuxifier ~/.tmuxifier
cp -r ~/.config/dotfiles/nvim ~/.config/nvim
```

## Cheat Sheet

Tmux keymaps (prefix: <code>Ctrl-s</code>)

| Key | Action |
|---|---|
| `prefix + r` | Reload tmux config |
| `prefix + h/j/k/l` | Navigate panes (left/down/up/right) |
| `prefix + ^` | Switch to last window |
| `prefix + =` | Tiled layout (equal pane sizes) |
| `prefix + [` | Enter copy mode |
| `v` (copy mode) | Begin selection |
| `C-v` (copy mode) | Rectangle selection |
| `y` (copy mode) | Yank selection |
| `Shift-Enter` | Send literal newline (`\n`) |

Shell aliases & commands

| Command | Action |
|---|---|
| `work` | Launch Rails tmuxifier session (server, lazygit, editor, console, terminal) |
| `dipupd` | Pull latest, bundle, migrate, then switch back to previous branch |
| `dipr` | `dip rails` |
| `diprc` | `dip rails c` |
| `diprs` | `dip rails s` |
| `diprm` | `dip bundle && dip rails db:migrate` |
| `diprt` | Run tests verbose |

