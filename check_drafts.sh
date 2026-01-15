#!/bin/bash

set -e

python3 - <<EOF
import os
print("env:", {k: os.environ.get(k) for k in (
    "ZMQ_BUILD_DRAFT","ZMQ_DRAFT_API","ZMQ_BUNDLED","PIP_NO_BINARY"
)})
import zmq
assert zmq.has("draft"), "Draft sockets NOT enabled"
print("Draft sockets enabled")
EOF
