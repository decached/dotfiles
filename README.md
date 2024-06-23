<img src="extra/logo.png" alt="dotfiles logo" width="400">

Your dotfiles are how you personalize your system. These are mine.

If you're interested in the philosophy behind why projects like these are awesome, you might want
to [read @holman's post on the subject][1].

## Installation

I use [GNU stow][stow] to symlink my dotfiles from this repo to `~/`

```sh
git clone --recursive git://github.com/decached/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh
stow vim  # and so on
```

This will clone, symlink the appropriate dotfiles files to your home directory.

What's inside
===

### vim + vim-plug

Vim plugins are managed through [vim-plug]. Run `:PlugInstall` the first time you start Vim.

### zsh + prezto

Prezto is configuration framework for Zsh. See installation instructions on [Prezto]

### fish + oh-my-fish

*Make sure you set the config directory to `~/dotfiles/fish/config`*
```sh
$ curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
$ fish install --path=~/.local/share/omf --config=~/dotfiles/fish/config
```

## Bugs

I want this to work for everyone; that means when you clone it down it should work for you. That said, I do use this as
*my* dotfiles, so there's a good chance I may break something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please [open an issue][4] on this repository, and I'd love
to get it fixed for you!

## License

This is [MIT][5] with no added caveats, therefore feel free to use this without linking back to me or using a disclaimer
or anything silly like that.

[stow]: https://www.gnu.org/software/stow/
[vim-plug]: https://github.com/junegunn/vim-plug
[prezto]: https://github.com/sorin-ionescu/prezto
[1]: http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/
[3]: https://github.com/decached/dotfiles/fork
[4]: https://github.com/decached/dotfiles/issues
[5]: LICENSE.md
