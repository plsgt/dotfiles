export LC_ALL=en_US.UTF-8
setopt interactivecomments
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
#setopt INC_APPEND_HISTORY
setopt PROMPT_SUBST
setopt autocd
export CLICOLOR=1
export LSCOLORS=GxfxbxdxCxegedabagacad

HISTSIZE=999999
HISTFILESIZE=999999
SAVEHIST=999999
HISTFILE=~/.zsh_history

autoload -Uz vcs_info

#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':vcs_info:*' formats "[%b] "
#the code inside the if statement is for zsh-completion package
if type brew &>/dev/null; then
#    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

autoload -Uz compinit && compinit
precmd() {
    precmd() {
        echo
        psvar=()

        vcs_info
        [[ -n $vcs_info_msg_0_ ]] && print -v 'psvar[1]' -Pr -- "$vcs_info_msg_0_"
    }
}

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# source ~/Desktop/Developer/fzf-tab/fzf-tab.plugin.zsh

# PROMPT='%F{9}%1v%F{133}%1~  %F{231}%B'
# PROMPT='%F{9}%1v%F{cyan}%1~%f %F{133}'$'$ %F{231}%B'
PROMPT='%F{9}%1v%F{cyan}%1~%f %F{133}'$'\ue711 %F{231}%B'
# RPROMPT="[%D{%L:%M:%S} | %D{%f/%m/%y}]"

preexec () { print -Pn "%b%f" }

#add to path here

PATH=$PATH:~/.local/bin		#for pipx package installations 
# PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
# PATH="$PATH:/Users/saugata/Desktop/Projects/flutter/bin"
# PATH="$PATH:/Users/saugata/.gem/ruby/2.6.0/bin"

# the following two lines are for ruby gem software installations
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"



# aliases here

alias all='brew update && brew upgrade && brew upgrade --cask && brew upgrade --greedy && brew autoremove && brew cleanup -v -s --prune=all'
alias hist='history 1'
alias localip='ipconfig getifaddr en0'
alias publicip='curl ifconfig.me && echo'
alias cputemp='sudo powermetrics --samplers smc |grep -i "CPU die temperature"'
alias Path="echo $PATH | tr ':' '\n'"
alias vi='nvim'
alias cat='bat --paging=never'	# bat is cat with wings, better cat
alias gcc='/usr/local/bin/gcc-14'    # to get the actual gcc from brew installation path
alias g++='/usr/local/bin/g++-14'    # to get the actual g++ from brew installation path
alias ls='eza --icons --group-directories-first'
alias c++='clang++ -std=c++20 -Wall -Wextra'
alias py3='python3'
alias find='fd'
alias grep='rg'
alias cd='z'
# alias ping='gping'

# code for zsh-syntax-highlighting brew package
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# code for zsh-history-substring-search brew package
# source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# code for zsh-autosuggestions brew package
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# for iterm2 shell integration
test -e /Users/saugata/.iterm2_shell_integration.zsh && source /Users/saugata/.iterm2_shell_integration.zsh || true

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
FZF_DEFAULT_COMMAND="fd --type f"

eval "$(zoxide init zsh)"
