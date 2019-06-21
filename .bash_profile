#highlighting name
export PS1="\[\e[1;33m\]\u@\h:\w $\[\e[0m\]"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Set up rbenv
eval "$(rbenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#Setup git editor to be vim
export EDITOR=vim

#Add local bin to PATH
export PATH=$PATH:~/bin/

#Aliases
alias be="bundle exec"
alias bi="bundle install"
alias bo='EDITOR=subl bundle open'
alias setup_rails='bundle install; be rake db:migrate; RAILS_ENV=test be rake db:migrate'
alias run_test='bundle exec ruby -I test'
alias api_spec='BUNDLE_GEMFILE=../../Gemfile be rspec'
alias fuzz='rubocop `git ls-files -m | awk "/\.rb\"`'
alias heat='rubocop -a `git ls-files -m | awk "/\.rb\"`'
alias setup='bundle install; be rake db:migrate; RAILS_ENV=test be rake db:migrate; yarn install'
alias server='be rails server -p 5000'
alias fserver='FOREGROUND_JOBS=1 bundle exec rails server -p 5000'
alias console='be rails c'

alias gch="git checkout"
alias ga="git add"
alias gap="git add -p"
alias gs="git status"
alias gb="git branch"
alias gp="git push"
alias gl="git log"
alias glc='git log --pretty=format:'%H' -n 1 | pbcopy'
alias gd='git diff'
alias gc='git commit'

alias mybranch="git rev-parse --abbrev-ref HEAD"
alias runtest='ruby -I test'
alias wbr='branch -a --contains'
alias mbr='branch -a --merged'

#installing z 
. `brew --prefix`/etc/profile.d/z.sh

#Set port forwarding using pf_script.sh
#This allows the desktop app to be pointed at local community
# echo "
# rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8080
# rdr pass inet proto tcp from any to any port 443 -> 127.0.0.1 port 8443
# " | sudo pfctl -ef -

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/.bashrc
