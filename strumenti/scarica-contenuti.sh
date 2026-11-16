#!/usr/bin/env bash
# Scarica la biblioteca offline di Project Racoon (Linux e macOS).
# Uso:  ./strumenti/scarica-contenuti.sh [nopic|maxi|mini]   (predefinito: nopic)
# I file vanno in ../project-racoon-dati accanto al vault (cambiabile con DATI=/percorso).
# I download riprendono da dove si erano fermati se rilanci lo script.
set -euo pipefail

VARIANTE="${1:-nopic}"
case "$VARIANTE" in nopic|maxi|mini) ;; *) echo "Variante non valida: usa nopic, maxi o mini"; exit 1;; esac

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DATI="${DATI:-$(dirname "$ROOT")/project-racoon-dati}"
KIWIX="https://download.kiwix.org/zim"
MAPPA_URL="https://download.mapsforge.org/maps/v5/europe/italy.map"

mkdir -p "$DATI/zim" "$DATI/mappe"
command -v curl >/dev/null || { echo "Serve curl: installalo e riprova."; exit 1; }

ultimo() { # $1 = cartella, $2 = prefisso -> nome dell'ultimo file disponibile
  curl -fsSL "$KIWIX/$1/" | grep -oE "$2_[0-9]{4}-[0-9]{2}\.zim" | sort -u | tail -n 1
}

scarica() { # $1 = url, $2 = file temporaneo (riprende se interrotto)
  echo "→ $(basename "$1")"
  curl -fL -C - --retry 5 -o "$2" "$1" || {
    # 416 = file già completo: va bene
    [ "$(curl -sIL "$1" | awk 'tolower($1)=="content-length:"{v=$2} END{print v+0}')" = "$(wc -c < "$2" | tr -d ' ')" ] || return 1
  }
}

# nome finale | cartella su download.kiwix.org | prefisso del file
ELENCO="wikipedia_it wikipedia wikipedia_it_all_${VARIANTE}
wikimed other mdwiki_en_all_maxi
wikivoyage_it wikivoyage wikivoyage_it_all_maxi"

echo "Cartella dati: $DATI"
touch "$DATI/VERSIONI.txt"
while read -r nome cartella prefisso; do
  file="$(ultimo "$cartella" "$prefisso")"
  [ -n "$file" ] || { echo "Non trovo $prefisso su $KIWIX/$cartella/"; continue; }
  if [ -f "$DATI/zim/$nome.zim" ] && grep -q "^$nome.zim <- $file " "$DATI/VERSIONI.txt"; then
    echo "✓ $nome.zim è già l'edizione più recente ($file)"; continue
  fi
  scarica "$KIWIX/$cartella/$file" "$DATI/zim/$file.part"
  mv -f "$DATI/zim/$file.part" "$DATI/zim/$nome.zim"
  grep -v "^$nome.zim " "$DATI/VERSIONI.txt" > "$DATI/VERSIONI.tmp" || true
  echo "$nome.zim <- $file (scaricato il $(date +%F))" >> "$DATI/VERSIONI.tmp"
  mv -f "$DATI/VERSIONI.tmp" "$DATI/VERSIONI.txt"
done <<< "$ELENCO"

if [ -f "$DATI/mappe/italy.map" ] && [ "${AGGIORNA_MAPPA:-0}" != 1 ]; then
  echo "✓ italy.map già presente (per riscaricarla: AGGIORNA_MAPPA=1 $0)"
else
  scarica "$MAPPA_URL" "$DATI/mappe/italy.map.part"
  mv -f "$DATI/mappe/italy.map.part" "$DATI/mappe/italy.map"
  grep -v "^italy.map " "$DATI/VERSIONI.txt" > "$DATI/VERSIONI.tmp" || true
  echo "italy.map <- $MAPPA_URL (scaricato il $(date +%F))" >> "$DATI/VERSIONI.tmp"
  mv -f "$DATI/VERSIONI.tmp" "$DATI/VERSIONI.txt"
fi

echo
echo "Fatto. Per accendere Wikipedia per i link della wiki: ./strumenti/avvia-biblioteca.sh"
