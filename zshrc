autoload -U promptinit; promptinit
prompt pure

# BASE="$HOME/.zsh"

# load_all_files_in() {
#  if [ -d "$BASE/$1" ]; then
 #   for file in "$BASE/$1"/*.zsh; do
  #    source "$file"
   # done
#  fi
#}

#load_all_files_in before
#load_all_files_in ""

PATH="$PATH:`yarn global bin`"
PATH="$HOME/.rbenv/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH

cdpath=($HOME/Code/thoughtbot)

eval "$(rbenv init -)"
bindkey -v
autoload -U compinit && compinit
