---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 12 minuti
ultima_revisione: 2026-11-16
---

# 02 Generatori, serie e parallelo

> [!summary] In breve
> Un **generatore** reale ha una **f.e.m.** (E) e una **resistenza interna** (Ri): quando eroga corrente la tensione ai morsetti **cala**.
> Resistenze in **serie**: si **sommano** (R = R1 + R2 + ...). Stessa corrente in tutte.
> Resistenze in **parallelo**: 1/R = 1/R1 + 1/R2 + ... (con due: R = R1×R2 ÷ (R1+R2)). Stessa tensione su tutte.
> **Partitore di tensione**: V2 = V × R2 ÷ (R1 + R2).
> **Massimo trasferimento di potenza**: quando la resistenza del carico è **uguale** alla resistenza interna del generatore.

## Il generatore reale

Una pila nuova da 1,5 V a vuoto misura 1,5 V. Se le colleghi un carico, la tensione scende un po': parte della tensione "si perde" dentro la pila, sulla sua **resistenza interna**.

**V morsetti = E − Ri × I**

Esempio: batteria con E = 12 V e Ri = 0,1 Ω che eroga 10 A → V = 12 − 0,1 × 10 = **11 V**.

## Generatori in serie e in parallelo

- **Serie** (+ di una al − dell'altra): le **tensioni si sommano**, la corrente massima resta quella di una sola. Quattro pile da 1,5 V in serie = 6 V.
- **Parallelo** (tutti i + insieme, tutti i − insieme): la tensione resta la stessa, la **capacità** e la corrente disponibile si sommano. Solo con generatori **uguali**.

## Resistenze in serie

**R totale = R1 + R2 + R3 + ...**

- La corrente è la **stessa** in tutte.
- La tensione si **divide** in proporzione alle resistenze.

Esempio: 100 Ω + 220 Ω + 680 Ω = **1000 Ω**. Con 10 V la corrente è 10 mA e sulla 680 Ω cadono 6,8 V.

## Resistenze in parallelo

**1/R totale = 1/R1 + 1/R2 + ...**

Con **due** resistenze: **R = (R1 × R2) ÷ (R1 + R2)**. Con **n resistenze uguali**: R ÷ n.

- La tensione è la **stessa** su tutte.
- La corrente si **divide**: ne passa di più dove la resistenza è **minore**.
- Il totale è sempre **più piccolo** della resistenza più piccola.

Esempi: 100 Ω // 100 Ω = **50 Ω**. 100 Ω // 400 Ω = 40000 ÷ 500 = **80 Ω**.

## Partitore di tensione

Due resistenze in serie collegate a una tensione V. La tensione sulla seconda è:

**V2 = V × R2 ÷ (R1 + R2)**

Esempio: V = 12 V, R1 = 2 kΩ, R2 = 1 kΩ → V2 = 12 × 1 ÷ 3 = **4 V**.

## Partitore di corrente

Due resistenze in parallelo con corrente totale I. La corrente nella prima è:

**I1 = I × R2 ÷ (R1 + R2)** (sopra c'è la resistenza "dell'altro ramo").

## Massimo trasferimento di potenza

Un generatore cede la **massima potenza** al carico quando **R carico = R interna**. In quel caso il rendimento è del 50%. In radio è il principio dell'**adattamento d'impedenza**: trasmettitore, cavo e antenna a **50 Ω**.

## Domande di prova

1. Tre resistenze da 300 Ω in parallelo: quanto vale il totale?
2. Due resistenze da 1 kΩ e 3 kΩ in serie su 8 V: che tensione c'è sulla 3 kΩ?
3. Quando un generatore trasferisce la massima potenza al carico?

> [!note]- Soluzioni
> 1. 300 ÷ 3 = **100 Ω**.
> 2. 8 × 3 ÷ 4 = **6 V**.
> 3. Quando la resistenza del carico è **uguale** alla resistenza interna.

## Parole nuove

- **f.e.m.** (forza elettromotrice): la tensione del generatore a vuoto.
- **Carico**: ciò che il generatore alimenta.
- **Adattamento**: rendere uguali le impedenze per trasferire più potenza.

## Per saperne di più

- [[01 Elettricità, corrente e tensione]]
- [[03 Corrente alternata]]

## Fonti

- Programma d'esame, parte teoria; testo originale.
