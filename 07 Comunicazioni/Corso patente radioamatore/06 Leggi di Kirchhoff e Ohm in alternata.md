---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 12 minuti
ultima_revisione: 2026-11-16
---

# 06 Leggi di Kirchhoff e Ohm in alternata

> **In breve**
> **1ª legge di Kirchhoff (nodi)**: la somma delle correnti che **entrano** in un nodo è uguale alla somma di quelle che **escono**.
> **2ª legge (maglie)**: in un percorso chiuso la somma delle tensioni dei generatori è uguale alla somma delle **cadute** di tensione.
> In alternata l'opposizione totale si chiama **impedenza** Z (ohm). Con R e X in serie: **Z = √(R² + X²)**.
> **Legge di Ohm in alternata**: **V = Z × I**.
> **Potenza** attiva in alternata: P = V × I × cos φ (watt); la reattanza non consuma energia.

## Le leggi di Kirchhoff

### Legge dei nodi
Un **nodo** è un punto dove si incontrano tre o più fili. Le cariche non si accumulano: **quello che entra esce**.

Esempio: nel nodo entrano 3 A; escono due rami, uno con 1 A → l'altro porta **2 A**.

### Legge delle maglie
Una **maglia** è un percorso chiuso. Girando lungo la maglia, la somma delle tensioni dei generatori è uguale alla somma delle cadute (R × I) sui componenti.

Esempio: batteria da 12 V con due resistenze in serie; se su una cadono 8 V, sull'altra cadono **4 V**.

## Impedenza

In alternata ci sono tre tipi di "opposizione":
- **R** (resistenza): uguale a tutte le frequenze, tensione e corrente **in fase**;
- **XL** (induttiva): cresce con la frequenza, corrente in **ritardo** di 90°;
- **XC** (capacitiva): cala con la frequenza, corrente in **anticipo** di 90°.

Siccome sono sfasate, **non si sommano direttamente**: si sommano "a triangolo" (teorema di Pitagora).

### R e X in serie
**X = XL − XC** (le due reattanze si sottraggono, perché opposte)
**Z = √(R² + X²)**

Esempio: R = 30 Ω, XL = 50 Ω, XC = 10 Ω → X = 40 Ω → Z = √(900 + 1600) = √2500 = **50 Ω**.

Angolo di sfasamento: tan φ = X ÷ R. Nell'esempio tan φ = 40/30 → φ ≈ 53°.

## Legge di Ohm in alternata

**V = Z × I**, **I = V ÷ Z**. Esempio: Z = 50 Ω con 100 V → I = **2 A**.

## Potenze in alternata

| Potenza | Formula | Unità | Significato |
|---|---|---|---|
| **Apparente** S | V × I | VA | Quella "che sembra" |
| **Attiva** P | V × I × cos φ | W | Quella realmente consumata (calore, lavoro, onde radio) |
| **Reattiva** Q | V × I × sin φ | VAR | Va e viene tra generatore e reattanze, non si consuma |

**cos φ** si chiama **fattore di potenza**. Con un carico solo resistivo cos φ = 1.

Esempio: Z = 50 Ω, 100 V, 2 A, cos φ = 30/50 = 0,6 → S = 200 VA, P = 200 × 0,6 = **120 W** (verifica: R × I² = 30 × 4 = 120 W).

## Domande di prova

1. In un nodo entrano 5 A e 2 A; escono 4 A e un'altra corrente. Quanto vale?
2. R = 6 Ω e XL = 8 Ω in serie: quanto vale Z?
3. Quale delle tre potenze si misura in watt?

> **Soluzioni** (prima prova a rispondere da solo)
> 1. 5 + 2 − 4 = **3 A**.
> 2. √(36 + 64) = **10 Ω**.
> 3. La potenza **attiva**.

## Parole nuove

- **Impedenza (Z)**: l'opposizione totale alla corrente alternata.
- **Fattore di potenza (cos φ)**: quanta parte della potenza apparente è realmente utilizzata.

## Per saperne di più

- [05 Elettromagnetismo e induttori](05%20Elettromagnetismo%20e%20induttori.md)
- [07 Schemi a blocchi e ROS](07%20Schemi%20a%20blocchi%20e%20ROS.md)

## Fonti

- Programma d'esame, parte teoria; testo originale.
