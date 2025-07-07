#Add local bin to PATH
export PATH=$PATH:~/bin/

# export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Add Homebrew's sbin to PATH (for brew services)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

#Set port forwarding using pf_script.sh
#This allows the desktop app to be pointed at local community
# echo "
# rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8080
# rdr pass inet proto tcp from any to any port 443 -> 127.0.0.1 port 8443
# " | sudo pfctl -ef -

