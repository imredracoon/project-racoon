---
tipo: guida
sezione: Comunicazioni
livello: principiante
tempo_lettura: 6 minuti
ultima_revisione: 2026-11-16
---

# Winlink e APRS

> [!summary] In breve
> **Winlink** permette di mandare e ricevere **email via radio**, anche quando Internet non c'è nella tua zona. Funziona con onde corte o VHF, un computer e un'interfaccia.
> **APRS** trasmette la **posizione GPS**, brevi messaggi e dati meteo su **144,800 MHz**: chiunque con una radio o Internet vede dove sei.
> Entrambi richiedono la **patente di radioamatore** per trasmettere. Sono strumenti usati dalle reti di emergenza.

## Perché è importante

Nelle emergenze grandi servono messaggi **scritti** (elenchi di persone, richieste di materiali) che a voce si sbagliano. Winlink e APRS fanno arrivare testo e posizione anche da zone isolate.

## Winlink

### Come funziona
1. Scrivi l'email in un programma sul PC (per esempio **Pat**, libero, per Linux/Windows/macOS, o Winlink Express per Windows).
2. Il computer è collegato alla radio con un'**interfaccia audio** (o un modem).
3. La radio contatta una **stazione gateway** (RMS) anche a centinaia o migliaia di km in onde corte.
4. Il gateway, che ha Internet, consegna l'email. Le risposte tornano allo stesso modo.
5. Se anche i gateway sono senza Internet, i messaggi possono passare tra stazioni via radio (modalità **peer-to-peer** o "radio-only").

### Cosa serve
- Patente e nominativo, registrazione gratuita su winlink.org.
- Radio HF o VHF, interfaccia audio (tipo Digirig o SignaLink), PC con Pat o Winlink Express.
- Modem software (ARDOP, VARA) o Packet su VHF.

### Limiti
- Messaggi **brevi**, allegati piccoli.
- Niente cifratura (le regole dei radioamatori la vietano), niente usi commerciali.

## APRS

### Come funziona
- La radio (o un piccolo dispositivo con GPS) manda ogni tanto un pacchetto con **nominativo, posizione, simbolo, breve testo** su **144,800 MHz**.
- Stazioni **digipeater** lo ripetono; stazioni **iGate** lo mandano su Internet (visibile su siti come aprs.fi).
- Si possono mandare **brevi messaggi** di testo tra stazioni e anche **SMS/email** tramite servizi gateway.

### Usi in emergenza
- Seguire la **posizione** dei mezzi e delle squadre.
- Rete di **stazioni meteo** automatiche.
- Brevi messaggi tra centri di coordinamento.

### Cosa serve
- Patente e nominativo.
- Una radio con APRS integrato, oppure radio + app (APRSdroid su Android) + interfaccia.

## Per saperne di più

- [[Cos'è un radioamatore]]
- [[Meshtastic]] (alternativa senza patente)
- [[Le reti radio di emergenza in Italia]]

## Fonti

- Documentazione ufficiale winlink.org e progetto Pat (getpat.io).
- Specifiche APRS (Bob Bruninga, WB4APR) e IARU Region 1, frequenza 144,800 MHz.
