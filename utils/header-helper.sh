# ----------------------------------- FUNCTIONS
function ls_header() {
    clear
    stty size | perl -ale 'print "—"x$F[1]'
    ls --group-directories-first --color=auto
    stty size | perl -ale 'print "—"x$F[1]'
}

function cd_with_header() {
    cd $1
    ls_header
}

# ----------------------------------- ALIASES
alias l='ls_header'
# alias cd='cd_with_header'

# ----------------------------------- ENV VARS
export EDITOR=vim


function make_swap() {
    sudo fallocate -l $1 $2
    sudo chmod 600 $2
    sudo mkswap $2
    sudo swapon $2
    sudo swapon --show
}
