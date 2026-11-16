---
tipo: guida
sezione: Biblioteca offline
livello: principiante
tempo_lettura: 10 minuti
ultima_revisione: 2026-11-16
---

# Aprire Wikipedia dentro Obsidian

> [!summary] In breve
> 1. Avvia il server di Kiwix sul computer.
> 2. In Obsidian attiva il plugin core **Web viewer**.
> 3. Clicca i link "Approfondisci su Wikipedia" presenti nelle guide: la voce si apre dentro Obsidian, senza Internet.

## Perché è importante

Le guide di questa wiki sono brevi. Quando serve approfondire (per esempio "cos'è un'onda radio" o "come funziona un depuratore"), con un clic arrivi alla voce di Wikipedia già scaricata.

## Cosa ti serve

- [[Installare Kiwix|Kiwix]] (su Linux anche `kiwix-tools`).
- I file ZIM nella cartella `project-racoon-dati/zim`, [[Scaricare Wikipedia e le altre raccolte|rinominati come indicato]].
- Obsidian aggiornato (il Web viewer esiste dalla versione 1.8, solo su computer).

## Passo per passo

### 1. Avvia il server di Kiwix

Il "server" è solo un programma che fa vedere Wikipedia come se fosse un sito, ma dal tuo computer.

**Linux e macOS, modo semplice**: apri il terminale nella cartella della wiki e scrivi:
```
bash strumenti/avvia-biblioteca.sh
```

**Linux, modo manuale** (con kiwix-tools installato): apri il terminale e scrivi, adattando il percorso:
```
kiwix-serve -i 127.0.0.1 -p 8080 ~/Documenti/obsidian/project-racoon-dati/zim/
```
Lascia il terminale aperto finché usi Wikipedia. Per spegnerlo premi `Ctrl + C`.

**Windows e macOS**: apri Kiwix, apri il menu e scegli **Server locale** (o **Local Kiwix Server**). Imposta la porta **8080** e clicca **Avvia**.

**Verifica**: apri il browser e scrivi `http://localhost:8080`. Devi vedere la tua biblioteca.

### 2. Attiva il Web viewer in Obsidian

1. Apri **Impostazioni** (l'ingranaggio in basso a sinistra).
2. Vai su **Plugin core** e attiva **Web viewer**.
3. Nelle opzioni del Web viewer attiva **Apri i link esterni nel Web viewer**.

### 3. Usa i link

Nelle guide troverai link come questo:

[Approfondisci su Wikipedia: Terremoto](http://localhost:8080/search?books.name=wikipedia_it&pattern=Terremoto)

Il link fa una **ricerca** dentro la tua Wikipedia offline e mostra le voci trovate. Funziona solo se il server è acceso.

### Come scrivere un nuovo link

Copia questo schema e cambia solo la parola finale:
```
[Approfondisci su Wikipedia: PAROLA](http://localhost:8080/search?books.name=wikipedia_it&pattern=PAROLA)
```
Se la parola ha spazi, sostituiscili con `%20` (per esempio `Primo%20soccorso`). Per WikiMed usa `books.name=wikimed`.

## Errori da evitare

- **Link che non si apre**: quasi sempre il server di Kiwix è spento. Riaccendilo (passo 1).
- **"Libro non trovato"**: il file ZIM non è stato rinominato come previsto.
- Sul telefono il Web viewer non esiste: lì usa direttamente l'app Kiwix e cerca la parola a mano.

## Parole nuove

- **Server locale / localhost**: un programma che funziona solo sul tuo computer e si apre nel browser all'indirizzo `localhost`. Non va su Internet.
- **Porta (8080)**: un numero che distingue un programma dall'altro sul computer. Basta usare sempre lo stesso.
- **Plugin core**: funzioni già incluse in Obsidian, da attivare. Non serve installare niente.

## Fonti

- Documentazione kiwix-serve, kiwix-tools.readthedocs.io (2026).
- Guida di Obsidian, help.obsidian.md, sezione Web viewer (2026).

← [[16 Biblioteca offline]]
