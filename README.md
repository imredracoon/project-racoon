# Project Racoon

Una wiki offline di emergenza in italiano, fatta di semplici file Markdown. Non serve un programma preciso: si legge con **qualunque** lettore o editor Markdown, sul computer, sul telefono, nel browser o anche **solo dal terminale**, e funziona **senza Internet**. Si legge anche direttamente qui su GitHub.

Ogni guida è scritta per chi **non sa niente dell'argomento**. Gli argomenti sono preparazione, scenari di emergenza (con attenzione all'Italia), primo soccorso, acqua e cibo, energia, comunicazioni di emergenza (radio, PMR446, CB, radioamatori, reti mesh) e altro.

Come complemento facoltativo puoi collegare una **biblioteca offline**: Wikipedia in italiano, un'enciclopedia medica, Wikivoyage e la mappa d'Italia. Le guide la richiamano con dei link.

> **Attenzione**
> Queste guide hanno scopo informativo. Non sostituiscono le indicazioni delle autorità (Protezione Civile, 112) né un corso di primo soccorso.

---

## Indice

1. [Cosa c'è e cosa non c'è nel repository](#1-cosa-cè-e-cosa-non-cè-nel-repository)
2. [Installazione rapida](#2-installazione-rapida)
3. [Installare i programmi](#3-installare-i-programmi)
4. [Scaricare la biblioteca offline](#4-scaricare-la-biblioteca-offline)
5. [Aprire Wikipedia dai link](#5-aprire-wikipedia-dai-link)
6. [Telefono](#6-telefono)
7. [Aggiornare](#7-aggiornare)
8. [Struttura delle cartelle](#8-struttura-delle-cartelle)
9. [Licenza](#9-licenza)
10. [Appendice: disinstallare completamente](#appendice-disinstallare-completamente)

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

1. **Scarica la wiki.** Clona il repository oppure scarica lo ZIP da GitHub (*Code → Download ZIP*) ed estrailo, per esempio in `Documenti/project-racoon`.
2. **Scegli un programma per leggerla** (vedi la [sezione 3](#3-installare-i-programmi)). Va bene qualunque lettore Markdown che sappia aprire una cartella e seguire i link. Apri con quello la cartella `project-racoon`.
3. **Apri la nota `00 - START`.** La wiki è già utilizzabile così.
4. *(Facoltativo)* Per la biblioteca offline segui le sezioni 3, 4 e 5.

---

## 3. Installare i programmi

### Un programma per leggere la wiki (a tua scelta)

La wiki è scritta in **Markdown standard**, con link relativi: nessun programma è obbligatorio. Un buon lettore deve saper **aprire una cartella**, **seguire i link** tra i file e **mostrare le tabelle**. Alcuni esempi gratuiti:

| Dove | Esempi |
|---|---|
| Computer | Zettlr, Ghostwriter, Apostrophe, VSCodium / VS Code (anteprima Markdown), Obsidian |
| Android | Markor |
| iPhone | un'app che apre cartelle Markdown (per esempio Obsidian), oppure l'app *File* come testo |
| Browser | GitHub con Internet; senza Internet un'estensione "Markdown Viewer" |
| Terminale | `less` e `grep`, già presenti quasi ovunque; per una lettura più comoda `glow` o `mdcat` |

Installalo come qualunque altro programma del tuo sistema. Confronto, istruzioni e uso da terminale sono nella guida [Programmi per leggere la wiki](11%20Tecnologia%20offline/Programmi%20per%20leggere%20la%20wiki.md).

**Solo terminale (sistemi a bassissimo consumo)**, dalla cartella della wiki:

```bash
less "00 - START.md"                              # leggere (q per uscire, / per cercare)
grep -rin "terremoto" --include="*.md" .         # cercare in tutte le guide
w3m "http://localhost:8080/search?books.name=wikipedia_it&pattern=Terremoto"   # Wikipedia offline
```

Nei link `%20` è uno spazio: `../01%20Preparazione/Kit%20auto.md` è il file `01 Preparazione/Kit auto.md`.

### Programmi per la biblioteca offline

Servono due programmi gratuiti e open source:
- **Kiwix** apre i file `.zim` (Wikipedia e le altre raccolte).
- **GPXSee** apre la mappa offline sul computer.

Per aprire Wikipedia dai link delle guide serve anche **kiwix-serve**, il piccolo server di Kiwix (vedi la sezione 5).

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

> Su Ubuntu, se `flatpak` non c'è: `sudo apt install flatpak` e poi `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`. In alternativa, la pagina *Download* di [gpxsee.org](https://www.gpxsee.org) indica i repository ufficiali di GPXSee per Debian e Ubuntu.

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
Documenti/
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

## 5. Aprire Wikipedia dai link

1. **Accendi la biblioteca.**
   - Linux e macOS: `bash strumenti/avvia-biblioteca.sh`
   - Windows: doppio clic su `strumenti\avvia-biblioteca.bat`, oppure apri Kiwix Desktop → *Server locale* → porta `8080` → *Avvia*.

   Per controllare, apri <http://localhost:8080> nel browser: deve comparire la biblioteca.
2. **Usa i link nelle guide.** Dal tuo lettore Markdown fai clic sul link (in alcuni programmi serve `Ctrl` + clic): la pagina si apre nel browser. Da terminale incolla l'indirizzo in `w3m` o `lynx`. I link hanno questa forma:
   `http://localhost:8080/search?books.name=wikipedia_it&pattern=Terremoto`

Se il server è spento i link non si aprono, ma le guide restano tutte leggibili. Sul telefono usa direttamente l'app Kiwix.

**Mappe**: apri GPXSee → *Mappa → Carica mappa* (non *File → Apri*, che è per le tracce GPS) → `project-racoon-dati/mappe/italy.map`. Su Linux, per averla sempre nel menu:

```bash
mkdir -p ~/.local/share/gpxsee/maps
ln -s "$(realpath ../project-racoon-dati/mappe/italy.map)" ~/.local/share/gpxsee/maps/
```

Le istruzioni passo per passo per principianti sono anche dentro la wiki, nella sezione `16 Biblioteca offline`.

---

## 6. Telefono

1. Copia la cartella della wiki sul telefono (cavo, Syncthing, ecc.) e aprila con un lettore Markdown a tua scelta. Su **Android** un esempio è **Markor** (F-Droid o Play Store): l'icona a forma di **occhio** apre la vista di lettura con i link cliccabili. Su **iPhone** usa un'app che apre cartelle Markdown, oppure l'app *File* come testo. In ogni caso stampa anche le schede di `90 Schede stampabili`.
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
- solo fonti affidabili e ufficiali, citate in fondo alla guida;
- solo Markdown standard: link relativi come `[Titolo](../Cartella/Titolo%20della%20guida.md)`, niente `[[wikilink]]` né callout `> [!nota]`, così la wiki si legge uguale in qualunque programma, su GitHub e dal terminale.

---

## 9. Licenza

I testi, gli schemi originali e gli script sono rilasciati con licenza [MIT](LICENSE).

I contenuti di terzi inclusi nel repository (per esempio alcune immagini) mantengono la loro licenza e sono elencati in [`99 Allegati/ATTRIBUZIONI.md`](99%20Allegati/ATTRIBUZIONI.md). I contenuti scaricati a parte hanno licenze proprie: Wikipedia, WikiMed e Wikivoyage sono CC BY-SA, le mappe sono © contributori OpenStreetMap con licenza ODbL.

---

## Appendice: disinstallare completamente

Project Racoon non installa niente di nascosto: gli script scrivono **solo** dentro la cartella della wiki e dentro `project-racoon-dati/`. Per togliere tutto basta seguire questi passi, nell'ordine. Salta quelli che non ti riguardano.

> **Attenzione: Prima di cancellare**
> Se nella cartella `_personale/` hai scritto contatti o il piano familiare, **copiali altrove** prima di cancellare la wiki.

### Passo 1. Fermare la biblioteca

Se `avvia-biblioteca` è aperto, chiudi la sua finestra o premi `Ctrl+C`. Se è rimasto attivo in background:

- **Linux / macOS**: `pkill kiwix-serve`
- **Windows** (Prompt dei comandi): `taskkill /IM kiwix-serve.exe /F`

### Passo 2. Togliere la wiki dal tuo lettore Markdown

1. Nel programma che usavi per leggerla, togli la cartella `project-racoon` dall'elenco delle cartelle o degli spazi di lavoro (per esempio in Zettlr: clic destro sulla cartella → **Chiudi spazio di lavoro**). Questo non cancella i file.
2. Se quel programma non ti serve per altro, disinstallalo come un normale programma. Le sue impostazioni restano di solito in `~/.config/<nome del programma>` (Linux), `%APPDATA%` (Windows) o `~/Library/Application Support` (macOS).

### Passo 3. Cancellare la wiki e la biblioteca

Cancella le due cartelle (la biblioteca può occupare più di 10 GB):

```
project-racoon/          la wiki
project-racoon-dati/     Wikipedia, WikiMed, Wikivoyage, mappe, kiwix-serve portatile, log
```

Su Linux e macOS, dalla cartella che le contiene:

```bash
rm -rf project-racoon project-racoon-dati
```

Su Windows cancellale da Esplora file e svuota il Cestino.

### Passo 4. Disinstallare i programmi

**Fedora**

```bash
sudo dnf remove kiwix-desktop kiwix-tools gpxsee
```

**Debian, Ubuntu, Linux Mint**

```bash
sudo apt purge kiwix kiwix-tools
sudo apt autoremove
flatpak uninstall --delete-data it.tumic.GPXSee
```

**Arch e derivate**

```bash
sudo pacman -Rns kiwix-desktop kiwix-tools gpxsee
```

**Se avevi usato Flatpak** (qualunque distribuzione):

```bash
flatpak uninstall --user --delete-data org.kiwix.desktop it.tumic.GPXSee
flatpak uninstall --unused
```

Togli `--user` se li avevi installati a livello di sistema.

**Versione portatile di kiwix-serve**: era in `project-racoon-dati/bin/`, quindi è già stata cancellata al passo 3.

**Windows 10 e 11**: *Impostazioni → App → App installate*, poi disinstalla **Kiwix** e **GPXSee**. Se avevi copiato `kiwix-serve.exe`, era in `project-racoon-dati\bin\` (già cancellato).

**macOS**: trascina **Kiwix** e **GPXSee** da *Applicazioni* al Cestino. Se avevi installato kiwix-serve con Homebrew:

```bash
brew uninstall kiwix-tools
```

### Passo 5. Cancellare impostazioni e file residui

I gestori di pacchetti non cancellano le impostazioni personali. Queste cartelle sono nella tua cartella utente e si possono eliminare senza rischi.

**Linux**

```bash
# collegamento alla mappa creato per GPXSee (sezione 5)
rm -f ~/.local/share/gpxsee/maps/italy.map
# impostazioni e cache di GPXSee e Kiwix
rm -rf ~/.config/gpxsee ~/.local/share/gpxsee ~/.cache/gpxsee
rm -rf ~/.config/kiwix ~/.local/share/kiwix ~/.cache/kiwix
rm -rf ~/.local/share/kiwix-desktop ~/.cache/kiwix-desktop
# dati delle versioni Flatpak, se ne restano
rm -rf ~/.var/app/org.kiwix.desktop ~/.var/app/it.tumic.GPXSee
```

Alcune cartelle potrebbero non esistere: è normale. Per controllare che non sia rimasto niente:

```bash
find ~ -maxdepth 4 \( -iname '*kiwix*' -o -iname '*gpxsee*' \) 2>/dev/null
```

**Windows** (PowerShell): per vedere le cartelle residue, prima di cancellarle a mano.

```powershell
Get-ChildItem $env:APPDATA, $env:LOCALAPPDATA -Directory |
  Where-Object Name -match 'kiwix|gpxsee'
```

**macOS**

```bash
find ~/Library -maxdepth 3 \( -iname '*kiwix*' -o -iname '*gpxsee*' \) 2>/dev/null
```

Controlla l'elenco e cancella le cartelle trovate con `rm -rf "percorso"`. Le impostazioni dell'app Kiwix dell'App Store di solito sono in `~/Library/Containers/`.

### Passo 6. Telefono

1. **Wiki**: cancella la sua cartella dal telefono con l'app dei file. Poi disinstalla il lettore Markdown che usavi, se non ti serve per altro.
2. In **Kiwix**: elimina i file `.zim` dalla libreria (tieni premuto sul libro e scegli *Elimina*). Poi disinstalla l'app.
3. In **Organic Maps** o **OsmAnd**: cancella le mappe scaricate dal menu *Mappe scaricate* e poi disinstalla l'app.

### Passo 7. Copia del repository

Se hai fatto un **fork** su GitHub e non ti serve più: *Settings → Danger Zone → Delete this repository* nel tuo fork. Le chiavette USB con le copie di emergenza vanno cancellate a mano.
