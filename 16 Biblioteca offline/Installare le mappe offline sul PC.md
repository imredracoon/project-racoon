---
tipo: guida
sezione: Biblioteca offline
livello: principiante
tempo_lettura: 7 minuti
ultima_revisione: 2026-11-16
---

# Installare le mappe offline sul PC

> **In breve**
> Installa **GPXSee** (gratuito, per Windows, macOS e Linux), scarica la mappa dell'Italia in formato **Mapsforge** (`italy.map`) nella cartella `project-racoon-dati/mappe` e aprila da GPXSee. Funziona senza Internet.

## Perché è importante

Se devi evacuare o trovare un ospedale, una fontana o una strada alternativa, una mappa che funziona senza rete può fare la differenza.

## Cosa ti serve

- Circa 1 GB di spazio.
- Connessione a Internet solo per il download.

## Passo per passo

1. **Installa GPXSee.**
   - Windows e macOS: vai su **gpxsee.org**, sezione **Download**, e installa il programma.
   - Linux: cerca **GPXSee** nel negozio di applicazioni (è su Flathub) oppure, da terminale su Ubuntu/Debian: `sudo apt install gpxsee`.
2. **Scarica la mappa.** Vai su **download.mapsforge.org**, apri `maps` → `v5` → `europe` e scarica `italy.map`.
3. Crea la cartella `project-racoon-dati/mappe` e mettici dentro il file.
4. **Aprila in GPXSee** dal menu **Mappa → Carica mappa** (in inglese **Map → Load map**) e scegli `italy.map`.
   > **Attenzione: Non usare File → Apri**
   > Il menu **File → Apri** serve per le tracce GPS: se ci apri una mappa ti dice "formato non supportato".
5. **Per averla sempre pronta** (Linux): collega la mappa alla cartella delle mappe di GPXSee, così la trovi nel menu **Mappa** a ogni avvio:
   ```
   mkdir -p ~/.local/share/gpxsee/maps
   cd cartella/della/wiki
   ln -s "$(realpath ../project-racoon-dati/mappe/italy.map)" ~/.local/share/gpxsee/maps/
   ```
   Su Windows e macOS la cartella delle mappe si apre da GPXSee nel menu delle impostazioni o si trova nella documentazione su gpxsee.org: copia lì il file.
6. Usa la rotellina del mouse per ingrandire fino alla tua zona.

## Consigli

- Prova la mappa **subito**, con Internet spento, per essere sicuro che funzioni.
- Stampa su carta la mappa della tua città con le aree di attesa (vedi [Mappe della mia zona](../09%20Orientamento%20e%20mappe/Mappe%20della%20mia%20zona.md)): la carta non si scarica mai.

## Errori da evitare

- Contare solo sul navigatore dell'auto o su Google Maps: senza rete spesso non mostrano niente.

## Parole nuove

- **Mapsforge**: un formato di mappa offline gratuito, basato su OpenStreetMap.
- **OpenStreetMap**: una mappa del mondo fatta da volontari, libera da usare.

## Fonti

- GPXSee, gpxsee.org (2026).
- Mapsforge, download.mapsforge.org (2026). Dati © contributori OpenStreetMap, licenza ODbL.

← [16 Biblioteca offline](16%20Biblioteca%20offline.md)
