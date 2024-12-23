#!/bin/bash

echo "Stopping BungeeCord..."
tmux send-keys -t bungee "end" C-m

echo "Stopping Void Server..."
tmux send-keys -t void "stop" C-m

echo "Stopping Main Server..."
tmux send-keys -t main "stop" C-m

# Wait for servers to shut down
sleep 15

echo "Killing tmux sessions..."
tmux kill-session -t bungee
tmux kill-session -t void
tmux kill-session -t main
