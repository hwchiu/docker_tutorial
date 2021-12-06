#!/usr/bin/env bash


cleanup() {
    echo "Cleaning up..."
    kill "${child_pid}"
    exit
}

trap cleanup SIGINT SIGTERM

pip3 install -r requirements.txt
python3 -m http.server &
child_pid="$!"
wait "${child_pid}"
