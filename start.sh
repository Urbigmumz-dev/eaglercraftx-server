#!/bin/bash

echo "Starting BungeeCord..."
java -Xms256M -Xmx512M -jar ./BungeeCord.jar nogui &

echo "Starting Void Server..."
cd void_lobby
java -Xms256M -Xmx512M -jar ./server.jar nogui &

echo "Starting Main Server..."
cd ../lobby
java -Xms512M -Xmx2G -jar ./server.jar nogui &

wait