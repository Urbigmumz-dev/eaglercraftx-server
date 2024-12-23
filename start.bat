@echo off
title Start Minecraft Server

echo Starting BungeeCord...
start "BungeeCord" java -Xms256M -Xmx512M -jar ./BungeeCord.jar nogui

echo Starting Void Server...
cd void_lobby
start "Void Lobby" java -Xms512M -Xmx1024M -jar ./server.jar nogui

echo Starting Main Server...
cd ../lobby
start "Lobby" java -Xms512M -Xmx6144M -jar ./server.jar nogui

echo All servers started. Press any key to exit this window.