# FZF shell integration
# Ctrl+T : autocomplete files with fzf
# Ctrl+R : search command history
# Alt+C : change directory

eval "$(fzf --bash)"
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | wl-copy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

export FZF_CTRL_T_OPTS="
  --style minimal
  --walker-skip .git,node_modules,target
  --preview 'fzf-preview.sh {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

export FZF_ALT_C_OPTS="
  --style minimal
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"

alias FZF="fzf --style minimal --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"


