#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/shared/avatar-presets/images"
for dest in \
  "$ROOT/frontend/web/public/avatars" \
  "$ROOT/frontend/admin/public/avatars" \
  "$ROOT/clients/pos_desktop/assets/avatars"; do
  mkdir -p "$dest"
  cp -f "$SRC"/* "$dest/"
done
echo "Synced avatar presets to web, admin, and pos_desktop."
