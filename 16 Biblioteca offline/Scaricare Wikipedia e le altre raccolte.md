---
tipo: guida
sezione: Biblioteca offline
livello: principiante
tempo_lettura: 8 minuti
ultima_revisione: 2026-11-16
---

# Scaricare Wikipedia e le altre raccolte

> **In breve**
> Dal sito **library.kiwix.org** scarica i file ZIM che ti servono e mettili nella cartella `project-racoon-dati/zim`. Poi **rinominali** con un nome semplice e fisso (per esempio `wikipedia_it.zim`): così i collegamenti dalla wiki funzionano anche dopo gli aggiornamenti.

## Cosa ti serve

- [Kiwix installato](Installare%20Kiwix.md).
- Una buona connessione: Wikipedia senza immagini richiede da 1 a qualche ora di download.
- Lo spazio indicato in [Come funziona la biblioteca offline](Come%20funziona%20la%20biblioteca%20offline.md).

## Quali file scaricare

| Raccolta | Cosa cercare nel nome del file | Rinominalo in |
|---|---|---|
| Wikipedia in italiano | `wikipedia_it_all_nopic` (senza immagini), `_maxi` (con immagini) oppure `_mini` | `wikipedia_it.zim` |
| MDWiki, ex WikiMed (medicina, inglese) | `mdwiki_en_all` oppure `wikipedia_en_medicine` | `wikimed.zim` |
| Wikivoyage in italiano | `wikivoyage_it_all` | `wikivoyage_it.zim` |
| iFixit, riparazioni (facoltativo) | `ifixit_en_all` | `ifixit.zim` |

## Il modo più semplice: lo script automatico

Nella cartella `strumenti` della wiki c'è uno script che fa tutto da solo: trova l'ultima edizione, scarica, rinomina e annota le versioni.

- **Linux e macOS**: apri il terminale nella cartella della wiki e scrivi `bash strumenti/scarica-contenuti.sh nopic`
- **Windows**: tasto destro su `strumenti\scarica-contenuti.ps1` → **Esegui con PowerShell**

Se preferisci fare a mano, segui i passi qui sotto.

## Passo per passo (a mano)

1. Crea la cartella `project-racoon-dati` accanto alla cartella della wiki, e dentro una cartella `zim`.
2. Apri il browser e vai su **library.kiwix.org**.
3. In alto scegli la lingua **Italiano** e cerca **Wikipedia**.
4. Scegli la versione (vedi la tabella) e clicca **Download**. Se puoi, scegli il download via **torrent**: è più veloce e riprende da solo se la connessione cade.
5. A download finito sposta il file nella cartella `zim`.
6. **Rinominalo** come indicato nella tabella. Per esempio `wikipedia_it_all_nopic_2026-10.zim` diventa `wikipedia_it.zim`.
7. Ripeti per WikiMed e Wikivoyage.
8. Apri Kiwix, clicca **Apri file** (o l'icona della cartella) e scegli `wikipedia_it.zim`. Se vedi la pagina principale di Wikipedia, funziona.

## Errori da evitare

- **Non lasciare il nome originale con la data**: i collegamenti dalla wiki si basano sul nome fisso.
- Non scaricare tutto sul telefono se ha poco spazio: lì basta la versione "mini".
- Non interrompere il computer durante il download di file così grandi: usa il torrent o un download manager.

## Parole nuove

- **Torrent**: un modo di scaricare file grandi un pezzo alla volta da più fonti. Serve un programma apposito (per esempio qBittorrent, gratuito).

## Prossimo passo

[Aprire Wikipedia nel browser](Aprire%20Wikipedia%20nel%20browser.md)

## Fonti

- Kiwix Library, library.kiwix.org (2026).

← [16 Biblioteca offline](16%20Biblioteca%20offline.md)
