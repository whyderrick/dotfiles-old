# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/pre/*)
          :
          ;;
        "$_dir"/post/*)
          :
          ;;
        *)
          if [ -f $config ]; then
            . $config
          fi
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

autoload -U promptinit; promptinit
prompt pure

# BASE="$HOME/.zsh"
#
# load_all_files_in() {
#  if [ -d "$BASE/$1" ]; then
#    for file in "$BASE/$1"/*.zsh; do
#      source "$file"
#    done
#  fi
# }

# load_all_files_in before
# load_all_files_in ""
#
PATH="$PATH:`yarn global bin`"
PATH=".git/safe/../../bin:$PATH"
PATH="$HOME/.rbenv/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH

cdpath=($HOME/Code/thoughtbot)

bindkey -v
autoload -U compinit && compinit
