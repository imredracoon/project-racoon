---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 12 minuti
ultima_revisione: 2026-11-16
---

# 03 Corrente alternata

> [!summary] In breve
> La corrente alternata **sinusoidale** cambia verso con regolarità. **Frequenza** f (hertz, Hz) = cicli al secondo; **periodo** T = 1 ÷ f.
> **Picco** (Vp), **picco-picco** (Vpp = 2 × Vp), **efficace** (Veff ≈ 0,707 × Vp), **medio** su mezza onda (≈ 0,637 × Vp).
> La rete di casa: 230 V **efficaci**, 50 Hz → picco circa 325 V.
> Ogni segnale periodico è una somma di sinusoidi: la **fondamentale** e le **armoniche** (multipli interi della frequenza).

## Che cos'è

In corrente alternata la tensione sale da zero a un massimo positivo, torna a zero, scende a un minimo negativo e torna a zero: è **un ciclo**. La forma più comune è la **sinusoide**.

## Frequenza e periodo

- **f** = numero di cicli al secondo, in **hertz** (Hz). Multipli: kHz, MHz, GHz.
- **T** = durata di un ciclo, in secondi. **T = 1 ÷ f** e **f = 1 ÷ T**.

Esempi: 50 Hz → T = 1/50 = **20 ms**. 1 MHz → T = **1 µs**.

## I valori della sinusoide

| Valore | Significato | Formula |
|---|---|---|
| **Picco** (Vp) | Il massimo | — |
| **Picco-picco** (Vpp) | Dal massimo al minimo | Vpp = 2 × Vp |
| **Efficace** (Veff, RMS) | Il valore continuo che darebbe lo stesso calore | Veff = Vp ÷ √2 ≈ **0,707 × Vp** |
| **Medio** (su mezza onda) | La media di una semionda | Vm ≈ **0,637 × Vp** |

Quando non è specificato, i valori di tensione e corrente alternata (es. 230 V) sono **efficaci**.

Esempio: rete 230 V eff → Vp = 230 × 1,414 ≈ **325 V**, Vpp ≈ **650 V**.

## Fase

Due sinusoidi della stessa frequenza possono essere **sfasate**: una arriva al massimo prima dell'altra. Lo sfasamento si misura in **gradi** (un ciclo = 360°). Sfasamento di 180° = **opposizione di fase**.

## Teorema di Fourier e armoniche

Ogni segnale periodico (quadra, triangolare, a dente di sega) si può scomporre in:
- una sinusoide alla **frequenza fondamentale** f;
- sinusoidi **armoniche** a 2f, 3f, 4f...

Un'onda **quadra** contiene solo armoniche **dispari** (3f, 5f, 7f...).

In radio le **armoniche** di un trasmettitore sono emissioni **indesiderate**: un trasmettitore a 7 MHz produce un po' di segnale anche a 14, 21, 28 MHz. Si eliminano con **filtri** (vedi [[09 Filtri e semiconduttori]]).

## L'oscilloscopio

Strumento che **disegna** la tensione nel tempo. Asse orizzontale: tempo (s/divisione). Asse verticale: tensione (V/divisione). Permette di leggere picco, periodo e quindi frequenza.

Esempio: un ciclo occupa 4 divisioni con 5 µs/div → T = 20 µs → f = **50 kHz**.

## Domande di prova

1. Qual è il periodo di un segnale a 10 kHz?
2. Un segnale ha 10 V di picco. Quanto vale il valore efficace?
3. Qual è la terza armonica di 3,6 MHz?

> [!note]- Soluzioni
> 1. T = 1 ÷ 10 000 = **100 µs**.
> 2. 10 × 0,707 ≈ **7,07 V**.
> 3. 3 × 3,6 = **10,8 MHz**.

## Parole nuove

- **Hertz**: un ciclo al secondo.
- **RMS / efficace**: valore che produce lo stesso riscaldamento di una tensione continua.
- **Armonica**: componente a frequenza multipla intera della fondamentale.

## Per saperne di più

- [[04 Onde, condensatori e potenza]]

## Fonti

- Programma d'esame, parte teoria; testo originale.
