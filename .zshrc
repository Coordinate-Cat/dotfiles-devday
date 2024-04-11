source "$HOME/.cargo/env"

PATH=~/.console-ninja/.bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
VOLTA_HOME=$HOME/.volta
export PATH=$VOLTA_HOME/bin:$PATH
eval "$(gh copilot alias -- zsh)"

# pnpm
export PNPM_HOME="/Users/ocat/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
source ~/powerlevel10k/powerlevel10k.zsh-theme
