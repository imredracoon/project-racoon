---
tipo: guida
sezione: Tecnologia offline
livello: principiante
tempo_lettura: 8 minuti
ultima_revisione: 2026-11-16
---

# Programmi per leggere la wiki

> **In breve**
> La wiki è fatta di **file di testo** (`.md`). Non serve un programma preciso: va bene **qualunque** lettore o editor Markdown.
> Sul computer e sul telefono scegli un programma che **apra una cartella** e **segua i link** (esempi più sotto).
> Su un computer vecchio o con poca batteria basta il **terminale**: `less` per leggere, `grep` per cercare.
> Se non hai niente, apri il file con il **Blocco note**: il testo si legge lo stesso.

## Perché è importante

In emergenza potresti dover usare un computer non tuo, un telefono diverso o un vecchio portatile senza interfaccia grafica. Per questo la wiki non dipende da un programma: è scritta in Markdown "semplice", che quasi tutti i programmi sanno leggere. Scegli tu quello che preferisci e **provalo prima** che serva.

## Cosa ti serve

- La cartella della wiki (`project-racoon`) sul dispositivo.
- Un programma tra quelli qui sotto. Tutti funzionano **senza Internet** dopo l'installazione.

## Cosa deve saper fare un buon programma

Prima di scegliere, controlla tre cose:

1. **Aprire una cartella intera**, non solo un file alla volta. Così vedi l'elenco delle guide.
2. **Seguire i link** tra le guide. I link sono "relativi" (puntano ad altri file della cartella) e gli spazi nei nomi sono scritti come `%20`.
3. **Mostrare le tabelle**. Molte guide (frequenze radio, scorte, calendario) usano tabelle.

Se un programma non fa una di queste cose puoi usarlo lo stesso, ma sarà più scomodo.

## Passo per passo

### Sul computer (Windows, macOS, Linux)

Alcuni esempi di programmi gratuiti. Non devi installarli tutti: **ne basta uno**.

| Programma | Sistemi | Note |
|---|---|---|
| **Zettlr** | Windows, macOS, Linux | Apre la cartella come "spazio di lavoro". Link con `Ctrl` + clic. Open source. |
| **Ghostwriter** | Linux | Leggero, con anteprima accanto al testo. Open source. |
| **Apostrophe** | Linux | Semplice e pulito, pensato per GNOME. Open source. |
| **VSCodium** o **VS Code** | Windows, macOS, Linux | Editor per programmatori. Apri la cartella e usa l'anteprima Markdown (`Ctrl` + `Shift` + `V`). |
| **Obsidian** | Windows, macOS, Linux | Gratuito ma non open source. Apre la cartella come "vault". |

Per tutti vale lo stesso schema:

1. Installa il programma dal sito ufficiale o dal gestore pacchetti del tuo sistema (su Fedora: `sudo dnf install` seguito dal nome, se il pacchetto c'è).
2. Aprilo e scegli l'opzione per **aprire una cartella**.
3. Seleziona la cartella `project-racoon`.
4. Apri il file `00 - START.md`.

### Sul telefono

1. **Android**: un esempio è **Markor** (gratuito, open source, da F-Droid o Play Store). Apri la cartella della wiki, poi tocca l'icona a forma di **occhio** per la vista di lettura con i link cliccabili.
2. **iPhone**: copia la cartella in **File → Sul mio iPhone** e aprila con un'app che legge cartelle Markdown (per esempio Obsidian, gratuita). Senza app puoi comunque aprire i file uno per uno dall'app **File**, come testo.

Per copiare la cartella sul telefono vedi [Aggiornare e copiare questa wiki](Aggiornare%20e%20copiare%20questa%20wiki.md).

### Nel browser

- **Con Internet**: la pagina GitHub del progetto mostra le guide già impaginate, con i link funzionanti.
- **Senza Internet**: Firefox e Chrome mostrano i file `.md` come testo semplice. Si leggono, ma i link non sono cliccabili. Esistono estensioni "Markdown Viewer" che li impaginano: installale prima, quando hai rete.

### Solo con il terminale (computer a bassissimo consumo)

Questa strada va bene per un Raspberry Pi, un portatile vecchio o un sistema senza interfaccia grafica, che consuma molta meno batteria. Gli esempi sono per Linux; su macOS funzionano quasi tutti uguali.

**1. Entra nella cartella della wiki**

```bash
cd ~/Documenti/project-racoon
```

Cambia il percorso se l'hai messa altrove.

**2. Vedi l'elenco delle guide**

```bash
ls
ls "02 Scenari"
```

Le virgolette servono perché i nomi contengono spazi.

**3. Leggi una guida con `less`** (c'è già su quasi tutti i sistemi)

```bash
less "02 Scenari/Terremoto.md"
```

- Freccia giù / su, oppure spazio, per scorrere.
- `/` seguito da una parola, poi `Invio`, per cercarla nella pagina. `n` va alla prossima.
- `q` per uscire.

Vedrai anche i simboli del Markdown (`#` per i titoli, `**` per il grassetto, `|` per le tabelle): sono normali.

**4. Cerca una parola in tutte le guide con `grep`**

```bash
grep -ril "acqua potabile" --include="*.md" .
```

Ti mostra i file che la contengono. Per vedere anche la riga:

```bash
grep -rin "acqua potabile" --include="*.md" .
```

**5. Segui un link a mano**

In un file vedrai link come questo:

```
[Zaino di evacuazione](../01%20Preparazione/Zaino%20di%20evacuazione.md)
```

- `..` vuol dire "torna alla cartella di sopra".
- `%20` è uno **spazio**, `%27` è un **apostrofo**, `%2C` è una **virgola**.

Quindi il file da aprire è `01 Preparazione/Zaino di evacuazione.md`:

```bash
less "01 Preparazione/Zaino di evacuazione.md"
```

**6. (Facoltativo) Una lettura più comoda, con colori e tabelle**

Se puoi installare un programma in più, due esempi:

- **glow**: impagina il Markdown nel terminale. Lanciato da solo dentro la cartella (`glow`) mostra l'**elenco di tutte le guide**, che puoi scorrere e filtrare con `/`. Per un file: `glow -p "02 Scenari/Terremoto.md"`.
- **mdcat**: stampa il file impaginato, con tabelle e grassetto: `mdcat "02 Scenari/Terremoto.md" | less -R`.

Su Fedora prova `sudo dnf install glow` oppure `sudo dnf install mdcat`. Se la tua distribuzione non li ha, entrambi si scaricano come singolo file eseguibile dalle loro pagine GitHub: fallo **prima** dell'emergenza.

**7. Wikipedia offline dal terminale**

Se hai la [biblioteca offline](../16%20Biblioteca%20offline/Come%20funziona%20la%20biblioteca%20offline.md), accendila con `bash strumenti/avvia-biblioteca.sh` e aprila con un **browser testuale**, che funziona dentro il terminale:

```bash
w3m "http://localhost:8080/search?books.name=wikipedia_it&pattern=Terremoto"
```

oppure, con `lynx`:

```bash
lynx "http://localhost:8080/search?books.name=wikipedia_it&pattern=Terremoto"
```

Cambia la parola dopo `pattern=` con quella che cerchi (spazi scritti come `+`). Su Fedora si installano con `sudo dnf install w3m lynx`. Comandi base: frecce per muoversi, `Invio` per aprire un link, `q` per uscire (in w3m `B` torna indietro, in lynx la freccia sinistra).

## Errori da evitare

- Installare il programma **durante** l'emergenza: senza Internet non potrai scaricarlo. Prova tutto oggi.
- Aprire solo un file invece della cartella: i link verso le altre guide non funzioneranno.
- Modificare per sbaglio le guide mentre le leggi: se il programma è un editor, fai attenzione a cosa scrivi. Le copie sulla chiavetta ti salvano.
- Pensare che serva un programma speciale: anche il Blocco note va bene per leggere.

## Parole nuove

- **Markdown**: un modo di scrivere testo semplice con pochi simboli (`#` per i titoli, `**` per il grassetto) che i programmi trasformano in pagine ordinate (vedi anche [00 - Glossario](../00%20-%20Glossario.md)).
- **Link relativo**: un collegamento che indica dove si trova un altro file **rispetto** a quello che stai leggendo, senza bisogno di Internet.
- **Terminale**: la finestra dove scrivi comandi invece di cliccare.
- **Browser testuale**: un browser che mostra le pagine web solo come testo, dentro il terminale.

## Per saperne di più

- [Aggiornare e copiare questa wiki](Aggiornare%20e%20copiare%20questa%20wiki.md)
- [Aprire Wikipedia nel browser](../16%20Biblioteca%20offline/Aprire%20Wikipedia%20nel%20browser.md)

## Fonti

- CommonMark, specifica del formato Markdown (commonmark.org).
- Manuali di `less`, `grep`, `w3m` e `lynx` (comando `man`, per esempio `man less`).
- Documentazione dei programmi citati: Zettlr, Markor, glow, mdcat.
