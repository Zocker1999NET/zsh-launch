# launch Plugin for ZSH

This plugin adds the command `launch` which allows launching applications from cli without further distraction.

But why not directly call the application?
- Because you do not want to see the (error) output of the application
- Because you would like to use your shell while the application is still running
- Because the application should be still running after exiting the shell

`launch` is an simple alias (but not built-in alias) to launch the given application
while redirecting *STDOUT* and *STDERR* to `/dev/null`
and forking the process to the `init` process,
so your shell and the new process run independently from one another.
It is literally the same as `APPLICATION >/dev/null 2>&1 &!` but way faster to type.

## Repository clones

The original repository will be stored on [GitHub](https://github.com/Zocker1999NET/zsh-launch).
You can use the original reopsitory if you want to use GitHub.
Also issues and pull requests will be collected there for convenience.

This repository will be cloned to my own server.
You can use the [clone](https://git.banananet.work/zsh-plugins/launch) instead of this repository
if you want to avoid use GitHub.

## Installation

### zsh (without plugin support)

1. Clone project
2. Add following line to your `.zshrc`:
```sh
SOURCE "path/to/repo/launch.plugin.zsh"
```

### oh-my-zsh

1. Clone project into `~/.oh-my-zsh/custom/plugins/launch`
2. Add `launch` to your plugin list
```sh
plugins=(… launch …)
```

### Antigen

1. Add following line to your `.zshrc`:
```sh
antigen bundle Zocker1999NET/zsh-launch # GitHub if default repository unchanged
antigen bundle https://git.banananet.work/zsh-plugins/launch # Own Server
```

or

1. Add the repository to your plugin list
```sh
antigen bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-launch # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/launch # Own Server
  …
EOBUNDLES
```

### Antibody

1. Add following line to your `.zshrc`:
```sh
antibody bundle Zocker1999NET/zsh-launch # GitHub if default repository unchanged
antibody bundle https://git.banananet.work/zsh-plugins/launch # Own Server
```

or

1. Add the repository to your plugin list
```sh
antibody bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-launch # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/launch # Own Server
  …
EOBUNDLES
```

## Usage

Prefix the command you want to launch with `launch`,
e.g. `launch okular my_document.pdf` or `launch firefox`.

## License

This plugin is licensed under WTFPL.
Do the fuck you want to with this plugin,
but please contribute to this plugin if you have made any improvements which could be useful for others.

## Contribute

If you find any issue, report it
or fix it yourself and create a pull request.
