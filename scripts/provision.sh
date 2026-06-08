#!/usr/bin/env bash

# Docker/kubectl/k3d sont installés par p3/scripts/setup.sh.

set -euo pipefail

log() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
ok()  { printf '\033[1;32m[ok]\033[0m %s\n' "$*"; }

export DEBIAN_FRONTEND=noninteractive

# Paquets de base
log "apt update + outils de base"
apt-get update -qq
apt-get install -y -qq curl ca-certificates gnupg lsb-release >/dev/null
install -m 0755 -d /etc/apt/keyrings
ok "outils de base installés"

ok "Provisioning terminé."
