function homestead() {
    ( cd ~/Homestead && vagrant $* )
}
alias vm="homestead ssh"
