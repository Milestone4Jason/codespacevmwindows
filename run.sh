#!/usr/bin/env bash
set -e

echo "=== WINDOWS 11 VM ==="

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker non disponibile."
  exit 1
fi

if [ ! -e /dev/kvm ]; then
  echo "ERRORE: /dev/kvm non disponibile."
  echo "Questo Codespace non supporta la virtualizzazione KVM."
  exit 1
fi

mkdir -p win_data

docker compose up -d

echo ""
echo "Windows VM avviata!"
echo "Apri la porta 8006 nel tab PORTS."
echo "RDP: porta 3389"
echo "Utente: Docker"
echo "Password: admin"
