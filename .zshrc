export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:$HOME/codeStuff/rust/rustcp
export PATH=$PATH:$HOME/.config
export PATH=$PATH:$HOME/Dev/online-judge-supporter/src
echo 'export PATH="/opt/homebrew/opt/llvm/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

if [ !-d "$HOME/.clangd" ]; then
  ln $HOME/.config/.clangd ~/.clangd
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.config}/zinit/zinit.git"

eval "$(~/.config/symlink.sh)"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit

eval "$(starship init zsh)"

bindkey '^k' history-search-backward
bindkey '^j' history-search-forward

HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
# setopt hist_verify

zstyle ':completion:*' matchter-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no 
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

alias ls='eza --icons=always'
# alias g++-14="g++"
alias sub="sublime"
function mkcd
{
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
