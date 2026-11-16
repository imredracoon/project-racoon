---
tipo: guida
sezione: Biblioteca offline
livello: principiante
tempo_lettura: 3 minuti
ultima_revisione: 2026-11-16
---

# Come funziona la biblioteca offline

> [!summary] In breve
> Questa wiki contiene guide brevi. Per approfondire puoi avere sul computer anche **Wikipedia** e le **mappe**, consultabili senza Internet. Sono file grandi, quindi stanno in una cartella separata, accanto alla wiki. Si leggono con due programmi gratuiti: **Kiwix** per Wikipedia e **GPXSee** per le mappe (sul telefono Organic Maps o OsmAnd).

## Perché è importante

Durante un'emergenza Internet può non funzionare per giorni. Avere Wikipedia e le mappe già scaricate significa poter cercare informazioni e orientarsi anche senza rete.

## Come sono organizzati i file

```
Documenti/obsidian/
├── project-racoon/          ← questa wiki (leggera, meno di 150 MB)
└── project-racoon-dati/     ← la biblioteca (pesante, da 5 a 60 GB)
    ├── zim/                 ← Wikipedia e le altre raccolte
    ├── mappe/               ← le mappe offline
    ├── bin/                 ← il server di Kiwix (Linux)
    ├── avvia-biblioteca.sh  ← accende Wikipedia per Obsidian
    └── VERSIONI.txt         ← quali edizioni hai e quando le hai scaricate
```

Tenerle separate ha due vantaggi: la wiki si copia e si aggiorna in pochi secondi, e se un giorno pubblichi la wiki su GitHub i file pesanti restano fuori.

## Cosa ti serve

- Un computer con abbastanza spazio libero (vedi la tabella qui sotto).
- Una connessione a Internet **solo una volta**, per scaricare tutto. Dopo non serve più.

| Cosa | Spazio |
|---|---|
| Wikipedia in italiano "mini" (solo introduzioni) | 3–5 GB |
| Wikipedia in italiano senza immagini | 8–15 GB (agosto 2026: 8,4 GB) |
| Wikipedia in italiano completa con immagini | 40–50 GB |
| WikiMed, enciclopedia medica (inglese) | 1–2 GB |
| Wikivoyage in italiano (guide di viaggio) | meno di 1 GB |
| Mappa dell'Italia per il PC | circa 1 GB |
| Mappa della Puglia per il telefono | circa 0,2 GB |

*I pesi sono indicativi: cambiano a ogni nuova versione.*

## Passo per passo

1. [[Installare Kiwix]]
2. [[Scaricare Wikipedia e le altre raccolte]]
3. [[Aprire Wikipedia dentro Obsidian]]
4. [[Installare le mappe offline sul PC]]
5. [[Installare le mappe offline sul telefono]]
6. Ogni 6–12 mesi: [[Aggiornare Wikipedia e le mappe]]

## Parole nuove

- **Offline**: che funziona senza Internet.
- **File ZIM**: un unico file che contiene un intero sito (per esempio tutta Wikipedia) compresso. Si apre con Kiwix.

← [[16 Biblioteca offline]]
