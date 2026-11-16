---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 15 minuti
ultima_revisione: 2026-11-16
---

# 07 Schemi a blocchi e ROS

> **In breve**
> **Ricevitore supereterodina**: antenna → amplificatore RF → **mixer** (con oscillatore locale) → **media frequenza (FI)** → rivelatore → amplificatore audio → altoparlante.
> **Frequenza immagine**: dista **2 × FI** dalla frequenza voluta; si riduce con filtri prima del mixer e con una FI alta.
> **Trasmettitore**: oscillatore → (moltiplicatori) → modulatore → amplificatori → **filtro** → antenna.
> **ROS (SWR)**: misura quanta potenza torna indietro dall'antenna. **1:1 = perfetto**, sotto **1,5:1** buono, oltre 2:1 da correggere.
> Con carico resistivo: **ROS = Z maggiore ÷ Z minore**.

## Il ricevitore più semplice

**Ricevitore a diodo** (a galena): antenna → circuito LC accordato → diodo → cuffia. Funziona solo per stazioni AM forti. Poco selettivo e poco sensibile.

## Il ricevitore supereterodina

```
Antenna → Filtro/ampl. RF → MIXER → Filtro FI → Ampl. FI → Rivelatore → Ampl. BF → Altoparlante
                              ↑
                    Oscillatore locale (OL)
```

1. **Amplificatore RF**: amplifica il segnale dell'antenna e filtra le frequenze lontane.
2. **Mixer**: mescola il segnale (fs) con l'oscillatore locale (fol). In uscita ci sono la **somma** e la **differenza**: fs + fol e |fs − fol|.
3. **Media frequenza (FI)**: un filtro fisso che lascia passare solo la differenza (per esempio 455 kHz o 10,7 MHz). Cambiando fol si sintonizzano stazioni diverse, ma la FI resta la stessa: così si usano **filtri ottimi** a frequenza fissa.
4. **Rivelatore (demodulatore)**: estrae l'audio (vedi [12 Modulazioni AM e FM](12%20Modulazioni%20AM%20e%20FM.md)).
5. **Amplificatore di bassa frequenza (BF)**: porta l'audio all'altoparlante.
6. **CAG** (controllo automatico di guadagno): riduce l'amplificazione con segnali forti.

Esempio: per ricevere 7,100 MHz con FI = 455 kHz l'oscillatore locale va a 7,555 MHz (oppure 6,645 MHz).

### Frequenza immagine
Con OL a 7,555 MHz, anche un segnale a 7,555 + 0,455 = **8,010 MHz** dà una differenza di 455 kHz e passa: è la **frequenza immagine**, a distanza **2 × FI** dalla frequenza voluta. Più alta la FI, più lontana è l'immagine e più è facile filtrarla prima del mixer. Per questo si usa spesso la **doppia conversione** (prima FI alta, poi bassa).

### Caratteristiche di un ricevitore
- **Sensibilità**: il segnale più debole che riesce a ricevere.
- **Selettività**: capacità di separare stazioni vicine (dipende dai filtri FI).
- **Stabilità**: non "scivola" di frequenza.

## Il trasmettitore

```
Oscillatore → Separatore/Moltiplicatore → Modulatore → Pilota → Finale → Filtro passa-basso → Antenna
```

- **Oscillatore**: genera la portante (spesso controllata da un **quarzo** o da un sintetizzatore **PLL**).
- **Moltiplicatore**: moltiplica la frequenza (es. ×3).
- **Modulatore**: inserisce l'informazione (voce, dati).
- **Amplificatore finale**: porta la potenza al valore voluto.
- **Filtro passa-basso**: elimina le **armoniche** (vedi [03 Corrente alternata](03%20Corrente%20alternata.md)).

Un ricetrasmettitore SSB moderno usa la stessa catena (mixer, FI, filtri) sia in trasmissione sia in ricezione.

## Linee di trasmissione e ROS

Tra trasmettitore e antenna c'è il **cavo coassiale**, con un'**impedenza caratteristica** Z0 (di solito **50 Ω**).

- Se l'antenna ha **la stessa impedenza** del cavo, tutta la potenza va all'antenna.
- Se è **diversa**, una parte torna indietro (**onda riflessa**) e lungo il cavo si formano **onde stazionarie**.

Il **ROS** (Rapporto di Onde Stazionarie, in inglese SWR) misura questo disadattamento:

**Γ (coefficiente di riflessione) = |Z − Z0| ÷ (Z + Z0)**
**ROS = (1 + Γ) ÷ (1 − Γ)**

Con un carico puramente resistivo, più semplicemente: **ROS = Z maggiore ÷ Z minore**.

Esempi:
- antenna 50 Ω su cavo 50 Ω → ROS **1:1**;
- antenna 100 Ω su cavo 50 Ω → ROS **2:1** (Γ = 1/3, potenza riflessa ≈ 11%);
- antenna 25 Ω su cavo 50 Ω → ROS **2:1**.

| ROS | Potenza riflessa |
|---|---|
| 1,0 | 0% |
| 1,5 | 4% |
| 2,0 | 11% |
| 3,0 | 25% |

### Il rosmetro
Si inserisce tra trasmettitore e cavo: misura potenza **diretta** e **riflessa** e indica il ROS. Si regola l'antenna (lunghezza) o si usa un **accordatore** per portarlo vicino a 1:1. Un ROS alto può **danneggiare** il finale del trasmettitore (molti apparati riducono la potenza in automatico).

## Domande di prova

1. Ricevitore con FI di 10,7 MHz sintonizzato su 145 MHz con OL sopra: qual è la frequenza immagine?
2. Antenna da 150 Ω collegata a un cavo da 50 Ω: ROS?
3. A cosa serve il filtro passa-basso all'uscita del trasmettitore?

> **Soluzioni** (prima prova a rispondere da solo)
> 1. OL = 155,7 MHz; immagine = 145 + 2 × 10,7 = **166,4 MHz**.
> 2. 150 ÷ 50 = **3:1**.
> 3. A **ridurre le armoniche** (emissioni indesiderate).

## Parole nuove

- **Mixer**: circuito che produce somma e differenza di due frequenze.
- **Media frequenza (FI)**: frequenza fissa su cui lavora la parte principale del ricevitore.
- **Onde stazionarie**: andamento della tensione lungo il cavo dovuto all'onda riflessa.

## Per saperne di più

- [CB 27 MHz](../Radio%20senza%20licenza/CB%2027%20MHz.md) (regolare il ROS in pratica)
- [08 Trasformatori e circuiti RLC](08%20Trasformatori%20e%20circuiti%20RLC.md)

## Fonti

- Programma d'esame, parte teoria; testo originale.
