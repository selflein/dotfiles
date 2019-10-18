autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

autoload -Uz compinit
compinit

zplugin light zsh-users/zsh-autosuggestions

zplugin light marzocchi/zsh-notify 

zplugin ice depth=1
zplugin light romkatv/powerlevel10k

# block traditional way of syntax completion
zplugin ice blockf
zplugin light zsh-users/zsh-completions

zplugin light zdharma/fast-syntax-highlighting

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
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

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# General environment variables 
# Put other environment variables into .zshenv
export EDITOR="vim"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore .cache -g ""'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "cat {} | head -20" --preview-window right'

alias ls='ls --color=auto'
