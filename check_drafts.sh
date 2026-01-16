#!/bin/bash

set -e

python3 - <<EOF
import zmq
assert zmq.has("draft"), "Draft sockets NOT enabled"
print("Draft sockets enabled")
EOF
