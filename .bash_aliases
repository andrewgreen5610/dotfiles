#alias make="make -j `distcc -j` CC=distcc"
alias tmux="tmux -2"
alias screen="tmux"
#alias rm="gvfs-trash"
alias term="gnome-terminal"
alias open="xdg-open"
# alias emacs='emacs -nw'
alias emacs='emacsclient -c -t'
# alias emacsclient='emacsclient -t'
# alias ack='ack-grep'
alias realpath="readlink -f"
alias sup="RBENV_VERSION=2.0.0-p451 sup"
alias ap="ansible-playbook"
alias art="php artisan"
alias artisan="php artisan"
alias phpstorm="$HOME/bin/phpstorm/bin/phpstorm.sh"
alias git-root='cd $(git rev-parse --show-toplevel)'
alias pwgen='/usr/bin/pwgen --capitalize --secure --symbols 22'
alias bean='sudo $HOME/.local/bin/bean'
alias vim='nvim'
