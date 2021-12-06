#!/usr/bin/env bash


trap 'echo signal received!; kill "${child_pid}"; wait "${child_pid}";' SIGINT SIGTERM

pip3 install -r requirements.txt
python3 -m http.server &
child_pid="$!"
wait "${child_pid}"
