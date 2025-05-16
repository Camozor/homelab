#!/usr/bin/env bash

HOMELAB_DIR=$(git rev-parse --show-toplevel)
source "$HOMELAB_DIR/.env"

ssh root@192.168.1.2 "TOKEN=${TOKEN_HOMELAB_TAILSCALE} bash -s" <<'EOF'
		tailscale up --auth-key=$TOKEN
EOF
