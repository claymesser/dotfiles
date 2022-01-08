# Clay Messer's dotfiles

My personal dotfiles for macOS, set up with
[dotbot](https://github.com/anishathalye/dotbot) and inspiration from [Josiah
Nunemaker's blog
post](https://josnun.github.io/posts/managing-dotfiles-and-zsh-with-dotbot-and-antigen/)
and [David Mytton's dotfiles](https://github.com/davidmytton/dotfiles).

### macOS Setup

```shell
git clone git@github.com:claymesser/dotfiles.git
cd dotfiles
./install
```

## Why dotbot?

I originally used a dotbot repository and manually linked the config filesg then moved to
[chezmoi](https://www.chezmoi.io) for the more advanced features. However, that
requires installing the chezmoi binary and adopting the workflow. dotbot is
embedded into the repo and uses a standard `./install` script.

## Initial dotbot setup

A record of the initial dotbot setup, [copied from the
readme](https://github.com/anishathalye/dotbot/blob/ac5793ceb58863d23427d21597634d3dcf66f9ac/README.md#integrate-with-existing-dotfiles):

```shell
cd dotfiles
git submodule add https://github.com/anishathalye/dotbot
git config -f .gitmodules submodule.dotbot.ignore dirty # ignore dirty commits in the submodule
cp dotbot/tools/git-submodule/install .
touch install.conf.yaml
```

Also has a modified `./install` script to trigger installed plugins.
