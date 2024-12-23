#!/bin/bash

sudo apt install tmux

echo "Starting BungeeCord..."
tmux new-session -d -s bungee "java -Xms256M -Xmx512M -jar ./BungeeCord.jar nogui"

echo "Starting Void Server..."
cd void_lobby
tmux new-session -d -s void "java -Xms512M -Xmx1024M -jar ./server.jar nogui"

echo "Starting Main Server..."
cd ../lobby
tmux new-session -d -s main "java -Xms512M -Xmx6144M -jar ./server.jar nogui"

cd ..