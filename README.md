# Dotfiles

- No external tooling 🙅‍♂️
- No symlinks 🙅‍♂️
- Files are tracked on `git` using a bare repository

Personally I really like the advantage of not having to deal with symlinks and external tooling at all. I can just track the original files in a “bare” repository and push it to Github. Using a custom command (`dtf`) makes this very easy to do.

## What does it include?

Configurations for the following tools:

- `zsh` and `oh-my-zsh`
- `git`
- `asdf`

```bash
dotfiles
├── .oh-my-zsh-custom
│   ├── aliases.zsh
│   ├── environment.zsh
│   ├── functions.zsh
│   ├── plugins
│   └── themes
├── .zshrc
├── .gitconfig
├── .gitignore_global
└── .tool-versions
```

## How does it work?

### Maintaining dotfiles

Please read the original article for a detailed walkthrough. I did change around a few things, like the dotfiles directory and command name. But the core idea and method is well explained.

[Dotfiles: Best Way to Store in a Bare Git Repository](https://www.notion.so/Dotfiles-Best-Way-to-Store-in-a-Bare-Git-Repository-1ea039aebdc9443a993a947492fdca44)

Files that are not explicitly tracked will not be shown. This is so that when you type `dtf status` and other commands later, files you are not interested in tracking will not show up as `untracked`. Use the custom `dtf` command to add or update dotfiles:

```bash
dtf status
dtf add .zshrc
dtf commit -m "Add zshrc"
dtf add .gitconfig
dtf commit -m "Add gitconfig"
dtf push
```

### Installing dotfiles on new machine

Because the dotfiles maintain their conventional location, I would assume that you can just clone this repo into `$HOME` like:

```bash
git clone git@github.com:mitchellslager/dotfiles.git $HOME
```

But that might not work because the directory is not empty. If that fails I’m fine with just copying and pasting the files.
