# Alias functions for autocomplete project traversal
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

dtf () {
  git --git-dir="$HOME/.cfg/" --work-tree="$HOME" "$@"
}