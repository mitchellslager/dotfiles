# Project traversal with autocomplete
labd() { cd ~/labdigital-repo/$1; }
compctl -W ~/labdigital-repo/ -/ labd
project() { cd ~/projects-repo/$1; }
compctl -W ~/projects-repo/ -/ project

# System pip is disabled by default, use with syspip
syspip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
syspip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# Dotfiles (bare) git repo commands
dtf () {
  git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" "$@"
}