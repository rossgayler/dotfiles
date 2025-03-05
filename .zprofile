#Fix Agnoster zsh theme
export DEFAULT_USER=rossg

#Setup git editor to be vim
export EDITOR=vim

#Add local bin to PATH
export PATH=$PATH:~/bin/

# export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Add Homebrew's sbin to PATH (for brew services)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

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
alias server='be rails s -p 3002'
alias fserver='NODE_OPTIONS=--openssl-legacy-provider bin/webpack-dev-server'
alias console='be rails c'
alias worker="sidekiq -c 2"
alias prod_console="heroku run rails console --app accountsockclubcom-production"
alias staging_console="heroku run rails console --app accountsockclubcom-staging"

alias gb="git branch --list | cat"
alias gbd="git branch -D"
alias gch="git checkout"

alias gl="git log"
alias gd='git diff'

# copy SHA of HEAD to clipboard
alias glc='git log --pretty=format:'%H' -n 1 | pbcopy'

# current branch name
alias mybranch="git rev-parse --abbrev-ref HEAD"

# see branches that have a commit in them
# arg = commit SHA (defaults to HEAD)
alias gbc='git branch --contains'

# see branches that have been merged into a commit
# arg = commit SHA (defaults to HEAD)
alias mbr='git branch --merged'

alias ga="git add"
alias gap="git add -p"
alias gs="git status"
alias gc='git commit'

alias gp="git push"
alias gpn='git push --no-verify'
alias yeet="git push --force"
alias yeet-bigly="git push --force --no-verify"

# push branch to origin for first time
gpu() {
  git push -u origin $(mybranch)
}

# force push branch and set upstream to origin (useful for rebases)
gpd() {
  git push --no-verify -u origin $(mybranch)
}

# alias fix_samson='sudo pfctl -F all'

#installing z 
# . `brew --prefix`/etc/profile.d/z.sh

#Set port forwarding using pf_script.sh
#This allows the desktop app to be pointed at local community
# echo "
# rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8080
# rdr pass inet proto tcp from any to any port 443 -> 127.0.0.1 port 8443
# " | sudo pfctl -ef -

