#Fix Agnoster zsh theme
export DEFAULT_USER=rossg

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
alias api_db='BUNDLE_GEMFILE=../../Gemfile be rake db:migrate RAILS_ENV=test'
alias fuzz='rubocop `git ls-files -m | awk "/\.rb\"`'
alias heat='rubocop -a `git ls-files -m | awk "/\.rb\"`'
alias setup='bundle install && yarn install && be rails assets:clobber db:migrate db:test:prepare'
alias server='be rails server -p 5000'
alias fserver='FOREGROUND_JOBS=1 bundle exec rails server -p 5000'
alias console='be rails c'
alias worker="be rake resque:work QUEUE='*'"

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
alias gpn='git push --no-verify'

gpu() {
  git push -u origin $(git rev-parse --abbrev-ref HEAD)
}

gpd() {
  git push --no-verify -u origin :$1
}

alias yeet="git push --force"
alias yeet-bigly="git push --force --no-verify"

alias mybranch="git rev-parse --abbrev-ref HEAD"
alias gbc='git branch --contains'
alias mbr='branch --merged'

alias fix_samson='sudo pfctl -F all'

#installing z 
. `brew --prefix`/etc/profile.d/z.sh

#Set port forwarding using pf_script.sh
#This allows the desktop app to be pointed at local community
# echo "
# rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8080
# rdr pass inet proto tcp from any to any port 443 -> 127.0.0.1 port 8443
# " | sudo pfctl -ef -
