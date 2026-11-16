---
tipo: guida
sezione: Biblioteca offline
livello: principiante
tempo_lettura: 8 minuti
ultima_revisione: 2026-11-16
---

# Aprire Wikipedia nel browser

> **In breve**
> 1. Avvia il server di Kiwix sul computer.
> 2. Clicca i link "Approfondisci su Wikipedia" presenti nelle guide (in Zettlr: `Ctrl` + clic, su Mac `Cmd` + clic).
> 3. La voce si apre nel **browser**, ma arriva dal tuo computer: Internet non serve.

## Perché è importante

Le guide di questa wiki sono brevi. Quando serve approfondire (per esempio "cos'è un'onda radio" o "come funziona un depuratore"), con un clic arrivi alla voce di Wikipedia già scaricata.

## Cosa ti serve

- [Kiwix](Installare%20Kiwix.md) (su Linux anche `kiwix-tools`).
- I file ZIM nella cartella `project-racoon-dati/zim`, [rinominati come indicato](Scaricare%20Wikipedia%20e%20le%20altre%20raccolte.md).
- Un browser qualsiasi (Firefox, Chrome, Edge, Safari).

## Passo per passo

### 1. Avvia il server di Kiwix

Il "server" è solo un programma che fa vedere Wikipedia come se fosse un sito, ma dal tuo computer.

**Linux e macOS, modo semplice**: apri il terminale nella cartella della wiki e scrivi:
```
bash strumenti/avvia-biblioteca.sh
```

**Windows, modo semplice**: fai doppio clic su `strumenti\avvia-biblioteca.bat`.

**Linux, modo manuale** (con kiwix-tools installato): dalla cartella della wiki scrivi:
```
kiwix-serve -i 127.0.0.1 -p 8080 ../project-racoon-dati/zim/*.zim
```
Lascia il terminale aperto finché usi Wikipedia. Per spegnerlo premi `Ctrl + C`.

**Senza terminale (Windows e macOS)**: apri Kiwix, apri il menu e scegli **Server locale** (o **Local Kiwix Server**). Imposta la porta **8080** e clicca **Avvia**.

**Verifica**: apri il browser e scrivi `http://localhost:8080`. Devi vedere la tua biblioteca.

### 2. Usa i link

Nelle guide troverai link come questo:

[Approfondisci su Wikipedia: Terremoto](http://localhost:8080/search?books.name=wikipedia_it&pattern=Terremoto)

- **Zettlr** (computer): tieni premuto `Ctrl` (su Mac `Cmd`) e clicca il link. Si apre il browser.
- **Markor** (telefono): passa alla **modalità lettura** (l'icona a forma di occhio) e tocca il link. Funziona solo se sul telefono è acceso un server Kiwix: di solito è più semplice usare direttamente l'app Kiwix e cercare la parola a mano.

Il link fa una **ricerca** dentro la tua Wikipedia offline e mostra le voci trovate. Funziona solo se il server è acceso.

### Come scrivere un nuovo link

Copia questo schema e cambia solo la parola finale:
```
[Approfondisci su Wikipedia: PAROLA](http://localhost:8080/search?books.name=wikipedia_it&pattern=PAROLA)
```
Se la parola ha spazi, sostituiscili con `%20` (per esempio `Primo%20soccorso`). Per WikiMed usa `books.name=wikimed`.

## Errori da evitare

- **Link che non si apre o pagina "impossibile raggiungere il sito"**: quasi sempre il server di Kiwix è spento. Riaccendilo (passo 1).
- **"Libro non trovato"**: il file ZIM non è stato rinominato come previsto.
- **Nella pagina della biblioteca manca qualcosa** (per esempio l'enciclopedia medica): la pagina mostra solo i contenuti nella lingua del browser. In alto scegli **Tutte le lingue**. Ricorda che l'enciclopedia medica si chiama **MDWiki**.
- **Non serve il server** se ti basta cercare a mano: apri l'app **Kiwix** e usa la sua barra di ricerca.

## Parole nuove

- **Server locale / localhost**: un programma che funziona solo sul tuo computer e si apre nel browser all'indirizzo `localhost`. Non va su Internet.
- **Porta (8080)**: un numero che distingue un programma dall'altro sul computer. Basta usare sempre lo stesso.

## Fonti

- Documentazione kiwix-serve, kiwix-tools.readthedocs.io (2026).

← [16 Biblioteca offline](16%20Biblioteca%20offline.md)
