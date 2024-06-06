#!/bin/bash

PORT=${1:-8000}

stop_server() {
    PID=$(lsof -t -i:$PORT -sTCP:LISTEN)
    if [ -n "$PID" ]; then
        echo "Stop old server on port  $PORT (PID $PID)"
        kill -9 "$PID"
    fi
}

stop_server

python3 -m http.server "$PORT" &

echo "HTTP server start, port -  $PORT"
