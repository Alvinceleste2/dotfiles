## Completion settings

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' completer _expand_alias _complete _approximate
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "$terminfo[kcuu1]" history-beginning-search-backward-end
bindkey "$terminfo[kcud1]" history-beginning-search-forward-end

## Misc settings

HISTFILE="$HOME/.histfile"
HISTSIZE=16000
SAVEHIST=16000

setopt autocd extendedglob
unsetopt beep

WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
WORDCHARS='${WORDCHARS:s@/@}'

## Misc bindings

bindkey '^H' backward-kill-word
bindkey '5~' kill-word

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

## To use GPG keys for SSH

#unset SSH_AGENT_PID

#if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  #export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
#fi

#export GPG_TTY=$(tty)
#gpg-connect-agent updatestartuptty /bye >/dev/null

## Aliases

alias ls='ls -lah --color'
alias l='ls -lah --color'
alias mosh='mosh --no-init'
alias cd..='cd ..'
#alias temp="cd $(mktemp -d -p $HOME/Temporary XXXXX)"

#export PATH="$HOME/.local/bin":"$HOME/.cargo/bin":"/opt/android-sdk/platform-tools/":$PATH
#export dev='/ssd/dev/'

## Perl settings

#PATH="/home/antonio/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/antonio/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/antonio/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/antonio/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/antonio/perl5"; export PERL_MM_OPT;

## Fix weird java rendering bug

#export _JAVA_AWT_WM_NONREPARENTING=1

