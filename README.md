<img src="extra/logo.png" alt="dotfiles logo" width="400">

Your dotfiles are how you personalize your system. These are mine.

If you're interested in the philosophy behind why projects like these are awesome, you might want
to [read @holman's post on the subject][1].

## Installation

```bash
git clone --recursive git://github.com/decached/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh
stow vim  # and so on
```

This will clone, symlink the appropriate dotfiles files to your home directory.

What's inside
===

### Vim + Plug

Vim plugins are managed through [vim-plug][2]. Run `:PlugInstall` the first time you start Vim.

### Zsh + Prezto

## Bugs

I want this to work for everyone; that means when you clone it down it should work for you. That said, I do use this as
*my* dotfiles, so there's a good chance I may break something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please [open an issue][4] on this repository, and I'd love
to get it fixed for you!

## License

This is [MIT][5] with no added caveats, therefore feel free to use this without linking back to me or using a disclaimer
or anything silly like that.

## Thanks

[1]: http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/

[2]: https://github.com/junegunn/vim-plug

[3]: https://github.com/decached/dotfiles/fork

[4]: https://github.com/decached/dotfiles/issues

[5]: LICENSE.md
