# complete vim mode
alias vim="nvim"
bindkey -v
# dotfiles
alias acnof="$EDITOR $HOME/.config/alacritty/alacritty.yml"
alias zconf="$EDITOR $HOME/.config/zsh/zshrc"
alias cconf="$EDITOR $HOME/.p10k.zsh"
alias iconf="$EDITOR $HOME/.config/i3/config"
alias nconf="$EDITOR $HOME/.config/nvim/init.lua"
alias kconf="$EDITOR $HOME/.config/kitty/kitty.conf"
alias config="git --git-dir=$HOME/.config/.dotfiles/ --work-tree=$HOME/.config/"
# tmux
alias tk="tmux kill-session"
alias tk="tmux kill-session"
alias tmain="tmux new -s sys -d && tmux rename-window -t sys:1 gov && tmux new-window -t sys && tmux send-keys -t sys:2 'r && clear' C-m && tmux rename-window -t sys:2 fs && tmux new-window -t sys &&tmux rename-window -t sys:3 rc && tmux attach -t sys"
alias trust="tmux new -s rust -d  && tmux rename-window -t rust:1 dev && tmux send-keys -t rust 'cd ~/Dokumente/Code/ && clear' C-m  && tmux new-window -t rust && tmux send-keys -t rust:2 'cd ~/Dokumente/Code/ && r && clear' C-m && tmux rename-window -t rust:2 fs  && tmux new-window -t rust  && tmux rename-window -t rust:3 git && tmux send-keys -t rust:3 'cd ~/Dokumente/Code/ && clear' C-m && tmux new-window -t rust  && tmux rename-window -t rust:4 rc && tmux a -t rust"

# fzf 
alias d='cd $(find $PWD -name ".*" -prune -o -print | fzf); clear'
alias f='nvim $(fzf); clear'
bindkey -s '^p' 'd\n'
bindkey -s '^r' 'f\n'
alias clip="xclip -selection clipboard"

# manjaro
alias cp="cp -i"
alias df="df -h"
alias free="free -m"
alias gitu="git add . && git commit && git push"
