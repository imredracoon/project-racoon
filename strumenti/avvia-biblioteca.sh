#!/usr/bin/env bash
# Accende Wikipedia offline per i link della wiki su http://localhost:8080 (Linux e macOS).
# Cerca kiwix-serve nel PATH oppure in project-racoon-dati/bin/. Ctrl+C per spegnere.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DATI="${DATI:-$(dirname "$ROOT")/project-racoon-dati}"
PORTA="${PORTA:-8080}"

if command -v kiwix-serve >/dev/null; then K=kiwix-serve
elif [ -x "$DATI/bin/kiwix-serve" ]; then K="$DATI/bin/kiwix-serve"
else echo "kiwix-serve non trovato. Vedi il README, sezione 'Installare i programmi'."; exit 1; fi

ls "$DATI"/zim/*.zim >/dev/null 2>&1 || { echo "Nessun file .zim in $DATI/zim. Lancia prima scarica-contenuti.sh"; exit 1; }

echo "Biblioteca accesa su http://localhost:$PORTA  (Ctrl+C per spegnere)"
exec "$K" -i 127.0.0.1 -p "$PORTA" "$DATI"/zim/*.zim
