---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 15 minuti
ultima_revisione: 2026-11-16
---

# 10 Diodi e transistor

> **In breve**
> Il **diodo** fa passare la corrente in un solo verso (da **anodo** a **catodo**). Serve a **raddrizzare** l'alternata e a **rivelare** i segnali AM.
> **Raddrizzatore**: a semionda (un diodo), a doppia semionda / **ponte di Graetz** (quattro diodi). Poi un **condensatore** livella la tensione.
> **Zener**: in inversa mantiene una tensione fissa (stabilizzatore). **LED**: emette luce. **Varicap**: capacità che cambia con la tensione.
> Il **transistor** bipolare (NPN o PNP) amplifica: una piccola corrente di **base** controlla una grande corrente di **collettore**: **Ic = β × Ib**.
> Un **oscillatore** è un amplificatore con **reazione positiva** e un circuito risonante (Colpitts, Hartley, a quarzo).

## Il diodo

Simbolo: un triangolo che punta verso una barretta. Il triangolo è l'**anodo** (A), la barretta il **catodo** (K). La corrente passa nel verso della freccia.

- In diretta cade circa **0,7 V** (silicio) o **0,3 V** (germanio, Schottky).
- In inversa blocca, fino alla **tensione inversa massima** indicata dal costruttore.

### Raddrizzatori
- **Semionda**: un diodo. Passa solo metà dell'onda. Ondulazione (ripple) a 50 Hz.
- **Doppia semionda con ponte di Graetz**: quattro diodi. Usa entrambe le semionde. Ondulazione a **100 Hz**, più facile da livellare.
- **Condensatore di livellamento** dopo i diodi: si carica sui picchi e mantiene la tensione. A vuoto la tensione continua si avvicina al **valore di picco** (Veff × 1,414, meno la caduta dei diodi).

Esempio: secondario 12 V eff con ponte e condensatore → circa 12 × 1,414 − 1,4 ≈ **15,6 V** a vuoto.

### Alimentatore stabilizzato
Trasformatore → raddrizzatore → condensatore → **stabilizzatore** (zener con resistenza, o regolatore integrato tipo 7812) → uscita.

### Diodi speciali
| Diodo | Funziona | Uso |
|---|---|---|
| **Zener** | In inversa mantiene una tensione costante (Vz) | Stabilizzare tensioni |
| **LED** | In diretta emette luce (caduta 1,8-3,5 V) | Spie, illuminazione. Serve una resistenza in serie |
| **Varicap (varactor)** | In inversa si comporta come un condensatore la cui capacità **diminuisce** se la tensione aumenta | Sintonia elettronica, modulazione FM |
| **Rivelatore** (germanio, Schottky) | Bassa soglia | Rivelazione AM, misure RF |

Resistenza per un LED: R = (Valimentazione − VLED) ÷ I. Esempio: 12 V, LED 2 V, 10 mA → R = 10 ÷ 0,01 = **1 kΩ**.

## Il transistor bipolare (BJT)

Tre strati: **NPN** o **PNP**. Tre terminali: **emettitore** (E), **base** (B), **collettore** (C). Nel simbolo la freccia è sull'emettitore: nell'NPN **esce** ("Non Penetra"), nel PNP **entra** ("Penetra").

- Per farlo condurre (NPN): base circa 0,7 V più positiva dell'emettitore.
- **Guadagno di corrente**: **β (hFE) = Ic ÷ Ib**, tipicamente 50-300.
- **Ie = Ib + Ic**.

Esempio: β = 100, Ib = 0,1 mA → Ic = **10 mA**.

### Le tre configurazioni
| Configurazione | Guadagno di tensione | Guadagno di corrente | Note |
|---|---|---|---|
| **Emettitore comune** | Alto | Alto | La più usata; uscita **sfasata di 180°** |
| **Base comune** | Alto | ≈ 1 | Bassa impedenza d'ingresso, buona in alta frequenza |
| **Collettore comune** (inseguitore di emettitore) | ≈ 1 | Alto | Alta impedenza d'ingresso, bassa d'uscita: fa da "separatore" |

### Funzionamento
- **Interdizione**: base senza corrente → transistor "spento".
- **Zona attiva**: amplifica.
- **Saturazione**: completamente "acceso", come un interruttore chiuso.

## Il transistor a effetto di campo (FET, MOSFET)

- Terminali: **source** (S), **gate** (G), **drain** (D).
- È comandato in **tensione** (non in corrente): il gate quasi non assorbe corrente → **altissima impedenza d'ingresso**.
- **JFET** (canale N o P), **MOSFET** (gate isolato da uno strato di ossido; delicato con l'elettricità statica).
- I MOSFET di potenza sono usati nei finali dei trasmettitori moderni.

## Gli oscillatori

Un oscillatore produce un segnale sinusoidale da solo. Serve:
1. un **amplificatore**;
2. una **reazione positiva**: parte dell'uscita torna all'ingresso **in fase**;
3. un **circuito risonante** che decide la frequenza (LC o quarzo).

Condizione di Barkhausen: guadagno dell'anello ≥ 1 e sfasamento totale 0° (o 360°).

| Oscillatore | Come si riconosce |
|---|---|
| **Colpitts** | Reazione presa da un **partitore capacitivo** (due condensatori) |
| **Hartley** | Reazione presa da una **presa sulla bobina** (induttore con presa intermedia) |
| **A quarzo** | Il quarzo fissa la frequenza: grande **stabilità** |
| **VFO** | Frequenza variabile (condensatore variabile o varicap) |
| **PLL / sintetizzatore** | Un VCO agganciato a un riferimento a quarzo: stabile e regolabile a passi |

## Domande di prova

1. Quanti diodi ha un ponte di Graetz e a che frequenza è il ripple con rete a 50 Hz?
2. Un transistor con β = 150 ha Ib = 20 µA. Quanto vale Ic?
3. Quale oscillatore usa un partitore capacitivo per la reazione?

> **Soluzioni** (prima prova a rispondere da solo)
> 1. **Quattro** diodi, ripple a **100 Hz**.
> 2. 150 × 20 µA = **3 mA**.
> 3. Il **Colpitts**.

## Parole nuove

- **Ripple**: piccola ondulazione residua sulla tensione continua.
- **Interdizione / saturazione**: transistor spento / completamente acceso.
- **VCO**: oscillatore controllato in tensione.

## Per saperne di più

- [09 Filtri e semiconduttori](09%20Filtri%20e%20semiconduttori.md)
- [11 Amplificatori e digitale](11%20Amplificatori%20e%20digitale.md)

## Fonti

- Programma d'esame, parte teoria; testo originale.
