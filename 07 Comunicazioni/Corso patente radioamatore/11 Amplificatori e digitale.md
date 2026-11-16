---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 13 minuti
ultima_revisione: 2026-11-16
---

# 11 Amplificatori e digitale

> [!summary] In breve
> Un **amplificatore** rende un segnale più grande. Guadagno: **G = Vout ÷ Vin** (o in dB).
> Classi: **A** (fedele, rendimento basso ~25-50%), **B** (due transistor a turno, ~70%), **AB** (compromesso, usato in SSB), **C** (rendimento alto ~80%, solo per **FM e CW**, distorce).
> La **controreazione** (reazione negativa) riduce il guadagno ma migliora fedeltà e stabilità.
> Il **digitale** usa solo due stati, **0 e 1**. Porte logiche: **AND, OR, NOT, NAND, NOR, XOR**.
> Per digitalizzare un segnale bisogna campionarlo ad almeno **il doppio** della sua frequenza massima (Nyquist).

## Gli amplificatori

### Guadagno
- **Tensione**: Gv = Vout ÷ Vin. **Corrente**: Gi = Iout ÷ Iin. **Potenza**: Gp = Pout ÷ Pin.
- In dB: G(dB) = 10 log Gp, oppure 20 log Gv.
- Amplificatori in **cascata**: i guadagni si **moltiplicano** (in dB si **sommano**).

Esempio: due stadi da ×10 in tensione → ×100 = **40 dB**.

### Le classi di funzionamento

| Classe | Il transistor conduce per | Rendimento indicativo | Distorsione | Uso |
|---|---|---|---|---|
| **A** | Tutto il ciclo (360°) | 25-50% | Minima | Preamplificatori, piccoli segnali |
| **B** | Metà ciclo (180°), in coppia push-pull | ~70-78% | Distorsione di incrocio | Audio |
| **AB** | Poco più di metà ciclo | 50-70% | Bassa | **Finali lineari SSB** |
| **C** | Meno di metà ciclo | fino a ~80% | Alta | Finali **FM e CW** (seguiti da circuito risonante) |

Un amplificatore che deve conservare l'ampiezza del segnale (AM, SSB) deve essere **lineare** (A, AB o B push-pull). In FM e CW l'ampiezza non porta informazione, quindi la classe C va bene.

### Rendimento
**η = Potenza utile in uscita ÷ Potenza assorbita dall'alimentazione**.

Esempio: finale che assorbe 13,8 V × 10 A = 138 W ed eroga 70 W RF → η ≈ **51%**. Il resto diventa **calore** (serve un dissipatore).

### Controreazione
Si riporta all'ingresso una parte dell'uscita **in opposizione di fase**. Il guadagno cala, ma diminuiscono distorsione e rumore e aumenta la banda passante. (Con reazione **positiva** invece si ottiene un **oscillatore**.)

### Amplificatore operazionale
Integrato con guadagno altissimo, due ingressi (+ non invertente, − invertente). Con due resistenze si fissa il guadagno:
- **invertente**: G = −Rf ÷ Ri;
- **non invertente**: G = 1 + Rf ÷ Ri.

## Il digitale

### Sistema binario
Si usano solo **0** e **1** (bit). 8 bit = 1 **byte**.

| Decimale | Binario |
|---|---|
| 0 | 0000 |
| 1 | 0001 |
| 2 | 0010 |
| 5 | 0101 |
| 10 | 1010 |
| 15 | 1111 |

Con **n** bit si rappresentano **2ⁿ** valori (8 bit = 256 valori, da 0 a 255).

### Porte logiche

| A | B | AND | OR | NAND | NOR | XOR |
|---|---|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 |

- **AND**: 1 solo se **tutti** gli ingressi sono 1.
- **OR**: 1 se **almeno uno** è 1.
- **NOT**: inverte (0 → 1, 1 → 0).
- **NAND / NOR**: AND / OR seguiti da NOT.
- **XOR**: 1 se gli ingressi sono **diversi**.

### Conversione analogico-digitale
- **ADC**: trasforma una tensione in un numero. **DAC**: il contrario.
- **Teorema del campionamento (Nyquist)**: frequenza di campionamento **≥ 2 ×** la frequenza massima del segnale. La voce (fino a 3 kHz) va campionata ad almeno 6 kHz; in pratica 8 kHz.
- Più **bit** = più precisione (meno rumore di quantizzazione).
- **DSP**: elaborazione digitale dei segnali (filtri, riduzione del rumore). Le radio **SDR** fanno quasi tutto in digitale.

## Domande di prova

1. Quale classe di amplificatore non è adatta per un finale SSB e perché?
2. Una porta AND con ingressi 1 e 0: uscita?
3. Per digitalizzare un segnale fino a 5 kHz, quale frequenza di campionamento minima serve?

> [!note]- Soluzioni
> 1. La **classe C**, perché **non è lineare** e distorce l'ampiezza.
> 2. **0**.
> 3. **10 kHz**.

## Parole nuove

- **Lineare**: che conserva la forma del segnale.
- **Push-pull**: due transistor che lavorano a turno su metà onda ciascuno.
- **SDR** (Software Defined Radio): radio in cui gran parte dell'elaborazione è fatta da software.

## Per saperne di più

- [[10 Diodi e transistor]]
- [[12 Modulazioni AM e FM]]

## Fonti

- Programma d'esame, parte teoria; testo originale.
