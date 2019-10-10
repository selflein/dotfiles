source '/home/sven/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions

# zplugin light MichaelAquilina/zsh-auto-notify 
zplugin light zdharma/fast-syntax-highlighting

# block traditional way of syntax highlighting
zplugin ice blockf
zplugin light zsh-users/zsh-completions

zplugin ice depth=1
zplugin light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

HISTFILE=~/.zsh_history
