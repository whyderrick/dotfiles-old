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

export PATH="$PATH:`yarn global bin`"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
