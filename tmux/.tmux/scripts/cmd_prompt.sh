#!/usr/bin/env bash
# Floating tmux command prompt (popup), laid out like a Neovim cmdline:
# a single rounded, titled input box. Enter runs what you typed, Esc cancels.
# Adapted from vayu for fzf 0.44 (no --ghost / --input-border / accept-or-print-query):
# with empty input, --print-query still emits the query on Enter.

sel=$(: | fzf --height 100% --print-query --no-info --no-separator --no-scrollbar \
      --prompt '❯ ' --layout reverse \
      --border rounded --border-label ' Cmdline ' --border-label-pos 3 \
      --color 'bg:-1,prompt:#D095A4,query:#D7DDE6,border:#D095A4,label:#D095A4' | head -n1)

[ -n "$sel" ] && eval "tmux $sel" 2>&1 | head -n1 | { read -r err; [ -n "$err" ] && notify-send -a tmux -i utilities-terminal 'tmux' "$err"; }
