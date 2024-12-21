#!/bin/bash

while true; do
    echo "Starting server..."
    java -Xms256M -Xmx512M -jar ./server.jar nogui

    EXIT_CODE=$?
    if [ $EXIT_CODE -eq 0 ]; then
        echo "Server stopped gracefully."
        break
    fi

    echo "Server crashed with exit code $EXIT_CODE. Restarting in 5 seconds..."
    sleep 5
done
