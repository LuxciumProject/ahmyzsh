#!/usr/bin/bash

tmux new-session -d -s my_session

# Fenêtre pour l'éditeur
tmux rename-window -t my_session:0 'Editor'
tmux send-keys -t my_session:0 'cd /chemin/vers/ton/projet && code .' C-m

# Fenêtre pour le serveur
tmux new-window -t my_session:1 -n 'Server'
tmux send-keys -t my_session:1 'cd /chemin/vers/ton/projet && npm start' C-m

# Fenêtre pour les tests
tmux new-window -t my_session:2 -n 'Tests'
tmux send-keys -t my_session:2 'cd /chemin/vers/ton/projet && npm test' C-m

# Attacher à la session
tmux attach-session -t my_session
