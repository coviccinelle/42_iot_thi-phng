#!/usr/bin/env bash
# Partie 3 : Docker + kubectl + k3d + cluster. À lancer dans la VM iot-dev.
# Idempotent.
set -euo pipefail

CLUSTER_NAME="${CLUSTER_NAME:-iot}"

log() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
ok()  { printf '\033[1;32m[ok]\033[0m %s\n' "$*"; }

# Docker
if command -v docker >/dev/null 2>&1; then
  ok "Docker déjà présent"
else
  log "Installation de Docker"
  curl -fsSL https://get.docker.com | sudo sh
  sudo systemctl enable --now docker
  sudo usermod -aG docker "$USER"
  ok "Docker installé"
fi

# Activer le groupe docker dans la session (ré-exécution unique)
if ! docker info >/dev/null 2>&1 && [ -z "${IOT_REEXEC:-}" ]; then
  log "Activation du groupe docker"
  exec sg docker -c "IOT_REEXEC=1 bash '$(readlink -f "$0")'"
fi

# kubectl
if command -v kubectl >/dev/null 2>&1; then
  ok "kubectl déjà présent"
else
  log "Installation de kubectl"
  KVER="$(curl -sL https://dl.k8s.io/release/stable.txt)"
  curl -sL "https://dl.k8s.io/release/${KVER}/bin/linux/amd64/kubectl" -o /tmp/kubectl
  sudo install /tmp/kubectl /usr/local/bin/kubectl && rm /tmp/kubectl
  ok "kubectl $KVER installé"
fi

# k3d
if command -v k3d >/dev/null 2>&1; then
  ok "k3d déjà présent ($(k3d version | head -1))"
else
  log "Installation de k3d"
  curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | sudo bash
  ok "k3d installé"
fi

# Cluster
if k3d cluster get "$CLUSTER_NAME" >/dev/null 2>&1; then
  ok "Cluster '$CLUSTER_NAME' déjà présent"
else
  log "Création du cluster '$CLUSTER_NAME'"
  k3d cluster create "$CLUSTER_NAME"
  ok "Cluster '$CLUSTER_NAME' créé"
fi

log "Vérification"
kubectl get nodes
ok "Cluster '$CLUSTER_NAME' prêt."
