unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

bind -n C-k clear-history
unbind C-o
unbind o
bind -r o select-pane -t :.+ \; display-pane

bind l send-keys -R\; clear-history\; display "Cleared"\

