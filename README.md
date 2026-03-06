<img src="extra/logo.png" alt="dotfiles logo" width="400">

Your dotfiles are how you personalize your system. These are mine.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read @holman's post on the subject][1].

## Prerequisites

```sh
# macOS
brew install fish zsh git git-delta neovim

# Linux (Arch)
sudo pacman -Sy fish zsh git git-delta neovim
```

## Clone

```sh
DOTFILES=$HOME/dotfiles
git clone https://github.com/decached/dotfiles.git $DOTFILES
```

---

## Backup Old Configuration

```sh
mv $XDG_CONFIG_HOME/fish/config.fish $XDG_CONFIG_HOME/fish/config.fish.bak
mv $XDG_CONFIG_HOME/zsh $XDG_CONFIG_HOME/zsh.bak
mv $XDG_CONFIG_HOME/nvim $XDG_CONFIG_HOME/nvim.bak
```

## What's Inside

> These instructions use `$XDG_CONFIG_HOME` to follow the XDG spec. `$XDG_CONFIG_HOME` is usually set to `~/.config`

### fish

```sh
ln -s $DOTFILES/fish/config.fish $XDG_CONFIG_HOME/fish/config.fish
```

> (Optional) Install [starship]
> (Optional) Install [fisher]
> (Optional) Install plugins
> fisher install (cat $DOTFILES/fish/fish_plugins)

### zsh

```sh
ln -s $DOTFILES/zsh $XDG_CONFIG_HOME/zsh
```

> Install [prezto]

---

### git

```sh
ln -s $DOTFILES/git $XDG_CONFIG_HOME/git
```

---

### neovim

```sh
ln -s $DOTFILES/nvim $XDG_CONFIG_HOME/nvim
```

---

## CLI Tools

These dotfiles are only half the story. The other half? My [curated CLI toolbelt](CLI.md) — because life’s too short for bad terminals.

## Bugs

I want this to work for everyone; that means when you clone it down it should work for you. That said, I do use this as *my* dotfiles, so there's a good chance I may break something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please [open an issue][issues] on this repository, and I'd love to get it fixed for you!

## License

This is [MIT][license] with no added caveats, therefore feel free to use this without linking back to me or using a disclaimer or anything silly like that.


---

[starship]: https://github.com/starship/starship
[fisher]: https://github.com/jorgebucaran/fisher
[prezto]: https://github.com/sorin-ionescu/prezto

[issues]: https://github.com/decached/dotfiles/issues
[license]: LICENSE.md
