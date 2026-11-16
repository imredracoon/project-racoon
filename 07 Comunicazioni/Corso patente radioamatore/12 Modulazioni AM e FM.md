---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 15 minuti
ultima_revisione: 2026-11-16
---

# 12 Modulazioni AM e FM

> [!summary] In breve
> **Modulare** significa "caricare" un'informazione (voce, dati) su un'onda radio detta **portante**.
> **AM**: varia l'**ampiezza**. Occupa una banda **B = 2 × fmax** (circa 6 kHz per la voce). Due bande laterali + portante.
> **SSB**: si trasmette **una sola banda laterale** senza portante: banda ~**2,4-3 kHz**, più efficiente. Per convenzione **LSB** sotto i 10 MHz, **USB** sopra.
> **FM**: varia la **frequenza**. Banda (Carson) **B ≈ 2 × (Δf + fmax)**: in VHF circa 11-16 kHz. Poco sensibile ai disturbi d'ampiezza.
> **CW** (telegrafia): accendi/spegni la portante, banda strettissima (~100-200 Hz). Digitali: FSK, PSK, FT8...

## Perché modulare

L'audio (300-3000 Hz) non può essere irradiato in modo efficiente: servirebbero antenne lunghe chilometri. Si usa invece un segnale ad alta frequenza (portante) e ci si "scrive sopra" l'informazione.

## AM (modulazione di ampiezza)

- L'**ampiezza** della portante segue la voce.
- Nello **spettro** compaiono: la **portante** (fc) e due **bande laterali** (fc − fm e fc + fm).
- **Banda occupata: B = 2 × fm max**. Voce fino a 3 kHz → **6 kHz**.
- **Indice (profondità) di modulazione** m = (Vmax − Vmin) ÷ (Vmax + Vmin). Va da 0 a 1 (0-100%). Oltre il 100% c'è **sovramodulazione**: distorsione e disturbi sulle frequenze vicine.
- La portante non porta informazione ma prende **almeno 2/3** della potenza: l'AM è poco efficiente.
- **Demodulazione**: **rivelatore a diodo** (rivelatore d'inviluppo) seguito da un condensatore.

Esempio: portante a 7,100 MHz modulata con 2 kHz → righe a 7,098, 7,100, 7,102 MHz; banda 4 kHz.

## SSB (banda laterale unica)

- Si **sopprime la portante** (modulatore bilanciato) e si **elimina una banda laterale** (filtro a quarzo o metodo a sfasamento).
- Resta **USB** (banda laterale superiore) o **LSB** (inferiore).
- Banda **~2,4-3 kHz**, metà dell'AM. Tutta la potenza va nell'informazione: a parità di potenza arriva molto più lontano.
- Senza voce, **nessuna emissione**. La potenza si indica in **PEP** (potenza di picco dell'inviluppo).
- **Demodulazione**: **rivelatore a prodotto** con un oscillatore locale (**BFO**) che "rimette" la portante. Se il BFO non è esatto la voce suona "da paperino".
- Convenzione radioamatoriale: **LSB sotto 10 MHz** (160, 80, 40 m), **USB sopra 10 MHz** (20 m e oltre) e in VHF/UHF.

## FM (modulazione di frequenza)

- La **frequenza** della portante si sposta in su e in giù seguendo la voce; l'ampiezza resta **costante**.
- **Deviazione** Δf: di quanto si sposta (radioamatori in VHF: ±2,5 o ±5 kHz).
- **Indice di modulazione** m = Δf ÷ fm.
- **Banda (regola di Carson): B ≈ 2 × (Δf + fm max)**. Con Δf = 5 kHz e fm = 3 kHz → **16 kHz**.
- **Vantaggi**: buona qualità audio, i disturbi d'ampiezza (scariche) vengono tagliati dal **limitatore**; **effetto cattura** (si sente il segnale più forte).
- **Svantaggi**: più banda, meno adatta alle onde corte con segnali deboli.
- **Pre-enfasi** in trasmissione e **de-enfasi** in ricezione migliorano il rapporto segnale/rumore sugli acuti.
- **Demodulazione**: **discriminatore**, rivelatore a rapporto, o **PLL**.
- Il **PM** (modulazione di fase) è molto simile e si riceve con lo stesso ricevitore.

## CW (telegrafia)

- La portante viene **accesa e spenta** con un tasto secondo il codice Morse ([[Codice Morse e segnali]]).
- Banda strettissima (~100-200 Hz): arriva lontano con poca potenza.
- In ricezione serve il **BFO** per sentire la nota.
- Fronti di salita e discesa troppo ripidi producono **click** che disturbano le frequenze vicine.

## Modi digitali

| Modo | Come funziona | Note |
|---|---|---|
| **RTTY** (FSK) | Due frequenze per 0 e 1 | Telescrivente |
| **PSK31** | Cambi di fase | Banda strettissima |
| **FT8 / FT4** | Toni multipli, sequenze a tempo | Segnali molto sotto il rumore |
| **Packet / APRS** | AFSK 1200 baud in VHF | Vedi [[Winlink e APRS]] |
| **DMR, D-STAR, C4FM** | Voce digitale in VHF/UHF | Ripetitori digitali |
| **SSTV** | Immagini lente | Anche dalla ISS |

## Le sigle delle emissioni

| Sigla | Significato |
|---|---|
| A1A | Telegrafia (CW) |
| A3E | AM fonia, doppia banda laterale |
| J3E | SSB fonia, portante soppressa |
| F3E | FM fonia |
| F1B / J2B | Telegrafia/dati con spostamento di frequenza (RTTY, digitali) |

## Domande di prova

1. Quanta banda occupa un segnale AM modulato da voce fino a 3 kHz?
2. Quale banda laterale si usa di solito sui 7 MHz?
3. Con deviazione 2,5 kHz e audio fino a 3 kHz, quanta banda occupa l'FM secondo Carson?
4. Perché in SSB serve il BFO in ricezione?

> [!note]- Soluzioni
> 1. **6 kHz**.
> 2. **LSB**.
> 3. 2 × (2,5 + 3) = **11 kHz**.
> 4. Perché la **portante è soppressa** e va reinserita localmente per ricostruire l'audio.

## Parole nuove

- **Portante**: l'onda radio "di base" che viene modulata.
- **Banda laterale**: le frequenze sopra e sotto la portante che contengono l'informazione.
- **PEP**: potenza di picco dell'inviluppo.
- **BFO**: oscillatore di battimento usato per ricevere SSB e CW.

## Per saperne di più

- [[07 Schemi a blocchi e ROS]]
- [[13 Antenne]]

## Fonti

- Programma d'esame, parte teoria; classificazione delle emissioni ITU (Regolamento delle radiocomunicazioni, appendice 1); testo originale.
