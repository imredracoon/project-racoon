# Project Racoon

Una wiki offline di emergenza in italiano, fatta di semplici file Markdown. Si apre con [Obsidian](https://obsidian.md) o con qualunque editor di testo e funziona **senza Internet** su Windows, macOS, Linux, Android e iOS.

Ogni guida è scritta per chi **non sa niente dell'argomento**. Gli argomenti sono preparazione, scenari di emergenza (con attenzione all'Italia), primo soccorso, acqua e cibo, energia, comunicazioni di emergenza (radio, PMR446, CB, radioamatori, reti mesh) e altro.

Come complemento facoltativo puoi collegare una **biblioteca offline**: Wikipedia in italiano, un'enciclopedia medica, Wikivoyage e la mappa d'Italia. Le guide la richiamano con dei link.

> [!WARNING]
> Queste guide hanno scopo informativo. Non sostituiscono le indicazioni delle autorità (Protezione Civile, 112) né un corso di primo soccorso.

---

## Indice

1. [Cosa c'è e cosa non c'è nel repository](#1-cosa-cè-e-cosa-non-cè-nel-repository)
2. [Installazione rapida](#2-installazione-rapida)
3. [Installare i programmi](#3-installare-i-programmi)
4. [Scaricare la biblioteca offline](#4-scaricare-la-biblioteca-offline)
5. [Collegare Wikipedia a Obsidian](#5-collegare-wikipedia-a-obsidian)
6. [Telefono](#6-telefono)
7. [Aggiornare](#7-aggiornare)
8. [Struttura delle cartelle](#8-struttura-delle-cartelle)
9. [Licenza](#9-licenza)

---

## 1. Cosa c'è e cosa non c'è nel repository

| Contenuto | Nel repository? | Peso | Come ottenerlo |
|---|---|---|---|
| Guide (`.md`) e schemi | ✅ sì | < 150 MB | è questo repository |
| Script di download e avvio (`strumenti/`) | ✅ sì | pochi KB | è questo repository |
| Wikipedia in italiano (`.zim`) | ❌ no | 3–50 GB secondo la versione | [sezione 4](#4-scaricare-la-biblioteca-offline) |
| WikiMed / MDWiki, medicina in inglese (`.zim`) | ❌ no | ~2 GB | sezione 4 |
| Wikivoyage in italiano (`.zim`) | ❌ no | ~0,6 GB | sezione 4 |
| Mappa d'Italia Mapsforge (`.map`) | ❌ no | ~1,6 GB | sezione 4 |
| Mappe per il telefono | ❌ no | 0,2–2 GB | [sezione 6](#6-telefono) |
| Facoltativi: iFixit (riparazioni), Wikibooks, Gutenberg | ❌ no | variabile | sezione 4, download manuale |

I file della biblioteca restano fuori dal repository perché sono molto pesanti e perché hanno licenze proprie: Wikipedia è CC BY-SA, i dati OpenStreetMap sono ODbL.

---

## 2. Installazione rapida

1. **Scarica la wiki.** Clona il repository oppure scarica lo ZIP da GitHub (*Code → Download ZIP*) ed estrailo, per esempio in `Documenti/obsidian/project-racoon`.
2. **Installa Obsidian** da [obsidian.md](https://obsidian.md). Aprilo e scegli **Apri cartella come vault**, poi seleziona la cartella `project-racoon`. Non servono plugin di comunità.
3. **Apri la nota `00 - START`.** La wiki è già utilizzabile così.
4. *(Facoltativo)* Per la biblioteca offline segui le sezioni 3, 4 e 5.

---

## 3. Installare i programmi

Servono due programmi gratuiti e open source:
- **Kiwix** apre i file `.zim` (Wikipedia e le altre raccolte).
- **GPXSee** apre la mappa offline sul computer.

Per collegare Wikipedia a Obsidian serve anche **kiwix-serve**, il piccolo server di Kiwix (vedi la sezione 5).

### Linux: Fedora

Tutto è nei repository ufficiali (Fedora 43 e successive):

```bash
sudo dnf install kiwix-desktop kiwix-tools gpxsee
```

In alternativa, senza sudo, puoi usare Flathub come remote **utente** (il Flathub di sistema su Fedora è "filtrato"):

```bash
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.kiwix.desktop it.tumic.GPXSee
```

### Linux: Debian, Ubuntu, Linux Mint

Kiwix (pacchetto `kiwix`) e kiwix-serve (pacchetto `kiwix-tools`) sono nei repository ufficiali (Ubuntu: sezione *universe*). GPXSee **non** è nei repository di Debian e Ubuntu: si installa da Flathub.

```bash
sudo apt install kiwix kiwix-tools
flatpak install flathub it.tumic.GPXSee
```

> Su Ubuntu, se `flatpak` non c'è: `sudo apt install flatpak` e poi `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`. In alternativa GPXSee offre pacchetti `.deb` ufficiali, linkati da [gpxsee.org](https://www.gpxsee.org).

### Linux: Arch e derivate (Manjaro, EndeavourOS)

Tutto è nel repository ufficiale *extra*:

```bash
sudo pacman -S kiwix-desktop kiwix-tools gpxsee
```

### Linux: qualunque distribuzione, senza installare niente

Scarica l'archivio `kiwix-tools_linux-x86_64-<versione>.tar.gz` più recente da <https://download.kiwix.org/release/kiwix-tools/> (per Raspberry Pi c'è la versione `aarch64`). Poi copia `kiwix-serve` in `project-racoon-dati/bin/`:

```bash
mkdir -p ../project-racoon-dati/bin
tar -xzf kiwix-tools_linux-x86_64-*.tar.gz
cp kiwix-tools_linux-x86_64-*/kiwix-serve ../project-racoon-dati/bin/
```

### Windows 10 e 11

1. **Kiwix Desktop**: scarica l'installer da [kiwix.org](https://kiwix.org) → *Download* → *Windows*. Si trova anche nel Microsoft Store.
2. **GPXSee**: scarica l'installer da [gpxsee.org](https://www.gpxsee.org).
3. **kiwix-serve** (facoltativo, perché Kiwix Desktop ha già un "Server locale"): scarica `kiwix-tools_win-*.zip` da <https://download.kiwix.org/release/kiwix-tools/> e copia `kiwix-serve.exe` in `project-racoon-dati\bin\`.

### macOS

1. **Kiwix**: dall'App Store.
2. **GPXSee**: scarica il file `.dmg` da [gpxsee.org](https://www.gpxsee.org).
3. **kiwix-serve**: con [Homebrew](https://brew.sh) esegui `brew install kiwix-tools`. In alternativa usa il "Server locale" di Kiwix, se disponibile nella tua versione.

---

## 4. Scaricare la biblioteca offline

I file vanno in una cartella **accanto** alla wiki, non dentro:

```
Documenti/obsidian/
├── project-racoon/          ← questo repository
└── project-racoon-dati/     ← biblioteca (creata dallo script)
    ├── zim/                 wikipedia_it.zim, wikimed.zim, wikivoyage_it.zim
    ├── mappe/               italy.map
    ├── bin/                 kiwix-serve (facoltativo)
    └── VERSIONI.txt         edizioni scaricate e data
```

### Scegli la versione di Wikipedia

| Versione | Contenuto | Peso indicativo |
|---|---|---|
| `mini` | solo l'introduzione di ogni voce | 3–5 GB |
| `nopic` **(consigliata)** | tutte le voci, senza immagini | 8–15 GB |
| `maxi` | tutte le voci con le immagini | 40–50 GB |

### Download automatico (consigliato)

Lo script trova da solo l'ultima edizione disponibile, scarica tutto, rinomina i file con nomi fissi e annota le versioni in `VERSIONI.txt`. Se lo interrompi, al riavvio riprende da dove si era fermato. Se rilanci lo script più avanti, riscarica solo i file che hanno un'edizione nuova.

**Linux e macOS**: dalla cartella della wiki esegui

```bash
bash strumenti/scarica-contenuti.sh nopic     # oppure: mini, maxi
```

**Windows**: tasto destro su `strumenti\scarica-contenuti.ps1` → **Esegui con PowerShell**, oppure

```powershell
powershell -ExecutionPolicy Bypass -File strumenti\scarica-contenuti.ps1 -Variante nopic
```

### Download manuale

1. Crea le cartelle `project-racoon-dati/zim` e `project-racoon-dati/mappe`.
2. Scarica l'ultima versione di ogni file:

   | File da scaricare | Dove | Rinominalo in |
   |---|---|---|
   | `wikipedia_it_all_nopic_AAAA-MM.zim` | <https://download.kiwix.org/zim/wikipedia/> | `zim/wikipedia_it.zim` |
   | `mdwiki_en_all_maxi_AAAA-MM.zim` | <https://download.kiwix.org/zim/other/> | `zim/wikimed.zim` |
   | `wikivoyage_it_all_maxi_AAAA-MM.zim` | <https://download.kiwix.org/zim/wikivoyage/> | `zim/wikivoyage_it.zim` |
   | `italy.map` | <https://download.mapsforge.org/maps/v5/europe/> | `mappe/italy.map` |

   Per file molto grandi conviene il link **torrent**, che trovi su <https://library.kiwix.org>.
3. **I nomi fissi sono importanti**: i link dentro le guide puntano a `wikipedia_it`, `wikimed` e `wikivoyage_it`.

### Contenuti facoltativi (non scaricati dallo script)

Si scaricano a mano da <https://library.kiwix.org> e vanno messi in `zim/`. Kiwix li legge tutti, anche se le guide non li richiamano:
- **iFixit** (`ifixit_en_all`): guide di riparazione per oggetti e dispositivi.
- **Wikibooks in italiano** (`wikibooks_it_all`): manuali.
- **Project Gutenberg in italiano** (`gutenberg_it_all`): libri di pubblico dominio.
- **Wikipedia in inglese** (`wikipedia_en_all_nopic`): più completa di quella italiana, circa 50 GB.

Altre mappe Mapsforge (altri Paesi o regioni) si trovano su <https://download.mapsforge.org/maps/v5/>.

---

## 5. Collegare Wikipedia a Obsidian

1. **Accendi la biblioteca.**
   - Linux e macOS: `bash strumenti/avvia-biblioteca.sh`
   - Windows: doppio clic su `strumenti\avvia-biblioteca.bat`, oppure apri Kiwix Desktop → *Server locale* → porta `8080` → *Avvia*.

   Per controllare, apri <http://localhost:8080> nel browser: deve comparire la biblioteca.
2. **In Obsidian**: *Impostazioni → Plugin core →* attiva **Web viewer**. Nelle sue opzioni attiva *Apri i link esterni nel Web viewer*.
3. **Usa i link nelle guide**, che hanno questa forma:
   `http://localhost:8080/search?books.name=wikipedia_it&pattern=Terremoto`

Se il server è spento i link non si aprono, ma le guide restano tutte leggibili. Il Web viewer esiste solo su computer: sul telefono usa direttamente l'app Kiwix.

**Mappe**: apri GPXSee → *Mappa → Carica mappa* → `project-racoon-dati/mappe/italy.map`.

Le istruzioni passo per passo per principianti sono anche dentro la wiki, nella sezione `16 Biblioteca offline`.

---

## 6. Telefono

1. Copia la cartella della wiki sul telefono e aprila con l'app Obsidian. Sincronizzala come preferisci: cavo, Syncthing, ecc.
2. Installa **Kiwix** (Play Store o App Store) e copia sul telefono i file `.zim`. Se hai poco spazio, la versione `mini` è sufficiente.
3. Installa **Organic Maps** (o CoMaps) oppure **OsmAnd** e, con il Wi-Fi, scarica le regioni che ti servono.
4. Prova tutto in **modalità aereo**.

---

## 7. Aggiornare

- **Wiki**: `git pull`, oppure scarica di nuovo lo ZIP.
- **Biblioteca**: una volta l'anno rilancia `scarica-contenuti`, che scarica solo le edizioni nuove. Per la mappa: `AGGIORNA_MAPPA=1 bash strumenti/scarica-contenuti.sh` (su Windows cancella prima `italy.map`).
- **Mappe sul telefono**: dall'app, *Aggiorna tutto*.

---

## 8. Struttura delle cartelle

```
00 - START.md              home della wiki
00 - PRIMA DI TUTTO.md     i primi 15 minuti di un'emergenza
00 - Glossario.md          parole tecniche spiegate
01 Preparazione/ … 16 Biblioteca offline/   le guide, per argomento
90 Schede stampabili/      checklist da stampare
98 Modelli/                modello per scrivere nuove guide
99 Allegati/               immagini e ATTRIBUZIONI.md
strumenti/                 script di download e avvio
_personale/                (non pubblicata) dati personali, contatti, piano familiare
```

### Contribuire

Ogni nuova guida parte da `98 Modelli/Modello guida.md`. Le regole sono:
- linguaggio semplice, un'azione per passo, parole tecniche spiegate;
- testo sempre originale, mai copiato dalle fonti;
- solo fonti affidabili e ufficiali, citate in fondo alla guida.

---

## 9. Licenza

I testi, gli schemi originali e gli script sono rilasciati con licenza [MIT](LICENSE).

I contenuti di terzi inclusi nel repository (per esempio alcune immagini) mantengono la loro licenza e sono elencati in [`99 Allegati/ATTRIBUZIONI.md`](99%20Allegati/ATTRIBUZIONI.md). I contenuti scaricati a parte hanno licenze proprie: Wikipedia, WikiMed e Wikivoyage sono CC BY-SA, le mappe sono © contributori OpenStreetMap con licenza ODbL.
