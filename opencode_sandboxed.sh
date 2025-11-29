#!/bin/bash
sandbox-exec -f opencode.sb -D WORK_DIR="$(pwd)" -D HOME="$HOME" opencode "$@"
