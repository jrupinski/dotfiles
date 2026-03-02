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

  Then set the font in your terminal config (eg. Ghostty):
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

## Cheat Sheet

<details>
<summary>Tmux keymaps (prefix: <code>Ctrl-s</code>)</summary>

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

</details>

<details>
<summary>Shell aliases & commands</summary>

| Command | Action |
|---|---|
| `work` | Launch Rails tmuxifier session (server, lazygit, editor, console, terminal) |
| `dipupd` | Pull latest, bundle, migrate, then switch back to previous branch |
| `dipr` | `dip rails` |
| `diprc` | `dip rails c` |
| `diprs` | `dip rails s` |
| `diprm` | `dip bundle && dip rails db:migrate` |
| `diprt` | Run tests verbose |

</details>
