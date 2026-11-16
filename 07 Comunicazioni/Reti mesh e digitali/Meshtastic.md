---
tipo: guida
sezione: Comunicazioni
livello: principiante
tempo_lettura: 8 minuti
ultima_revisione: 2026-11-16
---

# Meshtastic

> [!summary] In breve
> **Meshtastic** permette di mandare **messaggi di testo** senza Internet e senza rete telefonica, con piccoli dispositivi radio **LoRa** collegati al telefono via Bluetooth.
> Ogni dispositivo **ripete** i messaggi degli altri: più dispositivi ci sono, più lontano arrivano (rete "mesh").
> In Europa si usa la banda **868 MHz**, di **libero uso**: non serve patente.
> Portata: da **1-2 km** in città fino a **decine di km** tra punti in alto. Il dispositivo consuma pochissimo e dura giorni.

## Perché è importante

Con due o più dispositivi Meshtastic la famiglia o il quartiere può scambiarsi messaggi e posizione anche quando tutta la rete è ferma. Il costo è di **30-80 euro** per dispositivo.

## Cosa ti serve

- Un **dispositivo Meshtastic** per persona, versione **868 MHz** (per esempio modelli di Heltec, LilyGO, RAK Wireless, Seeed). Scegli un modello **già pronto con batteria e custodia** se non vuoi saldare.
- L'**app Meshtastic** (Android, iPhone, o dal browser del PC).
- Un **cavo USB** e un modo per ricaricare (power bank, pannellino).

## Passo per passo: prima configurazione

1. **Carica** il dispositivo e accendilo.
2. Installa l'**app Meshtastic** e attiva il **Bluetooth**.
3. Nell'app tocca **+** o "Connetti", scegli il dispositivo e inserisci il **PIN** che appare sul suo schermo (se non ha schermo, di solito è 123456).
4. Vai in **Impostazioni → LoRa → Regione** e scegli **EU_868**. Questo passo è obbligatorio: senza regione il dispositivo non trasmette.
5. Dai un **nome** al dispositivo (Impostazioni → Utente), per esempio "Anna".
6. Scrivi un messaggio nel canale **Primary** (pubblico): tutti i dispositivi vicini lo vedranno.
7. Ripeti per ogni dispositivo della famiglia.

## Creare un canale privato per la famiglia

1. Nell'app vai su **Canali**.
2. Aggiungi un **canale secondario**, dagli un nome (es. "famiglia") e lascia generare una **chiave** casuale.
3. Usa **Condividi** per mostrare il **codice QR** del canale.
4. Dagli altri telefoni scansiona il QR: ora siete nello stesso canale cifrato.
5. Lascia anche il canale pubblico: così aiuti a ripetere i messaggi di altri e ricevi aiuto.

## Come allungare la portata

- Più **in alto** è il dispositivo, più lontano arriva (finestra all'ultimo piano, tetto, collina).
- Un dispositivo fisso con **antenna esterna** e **pannellino solare** sul tetto fa da ripetitore per tutto il quartiere (ruolo "ROUTER" o "CLIENT" con buona posizione).
- Unisciti alla **comunità Meshtastic locale**: in molte città pugliesi ci sono già nodi attivi.

## Errori da evitare

- Dimenticare di impostare la **regione EU_868**.
- Comprare la versione a **915 MHz** o 433 MHz (per altri Paesi).
- Usare antenne o amplificatori che superano i limiti di potenza (in Europa massimo circa 500 mW in quella sottobanda, con limite di tempo di trasmissione).
- Scrivere dati sensibili nel canale pubblico.

## Parole nuove

- **LoRa** ("Long Range"): tecnica radio che consuma pochissimo e arriva lontano, ma trasmette poco testo alla volta.
- **Mesh**: rete in cui ogni dispositivo ripete i messaggi degli altri.
- **Nodo**: un dispositivo della rete.

## Per saperne di più

- [[Piano di comunicazione familiare]]
- [[App che funzionano senza Internet]]
- [[Reti mesh e digitali]]

## Fonti

- Documentazione ufficiale meshtastic.org (configurazione regione EU_868).
- Raccomandazione CEPT ERC/REC 70-03, apparati a corto raggio (SRD) 863-870 MHz.
