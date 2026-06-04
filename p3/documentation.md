How to install k3d without sudo rights:

```bash
mkdir -p "$HOME/.local/bin" curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | USE_SUDO=false K3D_INSTALL_DIR="$HOME/.local/bin" bash
```
