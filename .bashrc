

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/bjc1269/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/bjc1269/.config/synth-shell/synth-shell-prompt.sh
fi


alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cd..='cd ..'
alias ..='cd ..'
alias neofetch='clear; neofetch'
alias CAPS='xdotool key Caps_Lock'
alias KAPS='xdotool key Caps_Lock'
alias paint='textual-paint --theme dark'
alias PiConect='ssh bjc1269@BransPi.local'



# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


if [ -e /home/bjc1269/.nix-profile/etc/profile.d/nix.sh ]; then . /home/bjc1269/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

. "$HOME/.cargo/env"
neofetch






#personal aliases
#set alias for feh
alias wallpap="watch -n 30 feh --bg-fill --randomize ~/Pictures/Walpapers/**"

#set alias for openvpn3
alias vpn=" vpnoff | openvpn3 session-start --config /home/bjc1269/Documents/'Student VPN Files'/ShawNet-CNT-VPN.ovpn"
alias vpnoff="openvpn3 session-manage --config /home/bjc1269/Documents/'Student VPN Files'/ShawNet-CNT-VPN.ovpn --disconnect"
#this is here 
#pdf alias for evince
alias pdf="evince"

#alias for sftp to school server
alias school="sftp -P 22 bcarpent@thor.cnt.sast.ca"
#alias for cd to school server
alias Webcd="cd /home/bjc1269/Documents/nait/WebDev/S@mY_T!CK/cmp2000/"
#alias for cd to emebedded Systems class folder
alias Ecd="cd /home/bjc1269/Documents/Embeded/"

alias FixMonitor="~/.screenlayout/single.sh"
#enable vi mode
set -o vi

alias gitQ="git add . && git commit -m 'quick commit' && git push"

#vifm cd settings
vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}
alias vifm="vicd ."

