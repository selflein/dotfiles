source ~/.zinit/bin/zinit.zsh

# Install xdotool, notify-osd and wmctrl for `zsh-notify` to work
zinit wait lucid for \
    Aloxaf/fzf-tab \
    agkozak/zsh-z \
    marzocchi/zsh-notify \

zinit ice depth=1 atload'!source ~/.config/zsh/.p10k.zsh' lucid nocd
zinit light romkatv/powerlevel10k

zinit wait lucid for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        zdharma/fast-syntax-highlighting \
    blockf atpull"zinit creinstall -q ." \
        zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.config/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_ignore_all_dups   # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

setopt auto_menu
setopt always_to_end
setopt complete_in_word
setopt autocd

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# General environment variables 
# Put other environment variables into .zshenv
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND='fd --hidden --no-ignore-vcs --full-path --type file --follow --exclude {.git,.cache}'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'
export FZF_ALT_C_COMMAND='fd --hidden --no-ignore-vcs --full-path --type directory --follow --exclude {.git,.cache}'

alias ls='ls --color=auto'
alias open='xdg-open'
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias ssh='env TERM=xterm-256color ssh'

