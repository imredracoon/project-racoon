---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 12 minuti
ultima_revisione: 2026-11-16
---

# 05 Elettromagnetismo e induttori

> [!summary] In breve
> Una corrente crea intorno a sé un **campo magnetico**. Un filo avvolto a spirale (**bobina**) concentra il campo.
> Un campo magnetico che **varia** produce una tensione in un conduttore vicino (**induzione**, legge di Faraday).
> L'**induttore** ha un'**induttanza** L in **henry** (in pratica mH, µH). Si oppone alle **variazioni** di corrente.
> **Reattanza induttiva**: **XL = 2π f L**: più alta la frequenza, **più** si oppone (il contrario del condensatore).
> Induttori in **serie** si sommano; in **parallelo** come le resistenze (se non accoppiati).

## Campo magnetico

- Un **magnete** ha un polo **nord** e un polo **sud**. Poli uguali si respingono, diversi si attraggono.
- Le **linee di forza** escono dal nord ed entrano nel sud.
- Una **corrente** in un filo crea un campo magnetico **circolare** intorno al filo (regola della mano destra: pollice nel verso della corrente, le dita indicano il campo).
- Una **bobina** percorsa da corrente si comporta come un magnete (**elettromagnete**). Un nucleo di **ferro** o **ferrite** lo rende molto più forte.

## Induzione elettromagnetica

Se il campo magnetico che attraversa una spira **cambia** (magnete che si muove, corrente che varia), nella spira nasce una **tensione indotta**. Più veloce è il cambiamento, più grande la tensione.

Su questo principio funzionano **generatori**, **trasformatori**, **microfoni dinamici** e, al contrario, gli **altoparlanti**.

**Legge di Lenz**: la corrente indotta si oppone alla causa che l'ha generata.

## L'induttore

Una bobina di filo, in aria o su un nucleo. La sua **induttanza** L dipende da:
- numero di **spire** (cresce con il quadrato: spire doppie → induttanza ×4);
- **diametro** e **lunghezza** dell'avvolgimento;
- **nucleo** (ferrite, ferro → L molto più alta).

Comportamento:
- in **continua**, a regime, è quasi un **corto circuito** (resta solo la resistenza del filo);
- in **alternata** si oppone con la **reattanza induttiva**;
- nell'induttore la corrente è **in ritardo di 90°** sulla tensione;
- se si interrompe bruscamente la corrente genera una **sovratensione** (per questo sulle bobine dei relè si mette un diodo).

## Reattanza induttiva

**XL = 2 × π × f × L** (ohm, con f in Hz e L in henry).

Esempio: L = 10 µH, f = 7 MHz → XL = 6,28 × 7 000 000 × 0,000 01 ≈ **440 Ω**.

## Collegamenti

| Collegamento | Formula |
|---|---|
| **Serie** | L = L1 + L2 |
| **Parallelo** | 1/L = 1/L1 + 1/L2 |

Valgono se le bobine sono lontane e non si influenzano.

## Mutua induzione

Due bobine vicine: il campo dell'una induce tensione nell'altra. È il principio del **trasformatore** ([[08 Trasformatori e circuiti RLC]]). Più sono vicine, più l'**accoppiamento** è "stretto".

## Fattore di merito Q

Un induttore reale ha anche una piccola resistenza. **Q = XL ÷ R**. Q alto = meno perdite, circuiti più selettivi.

## Strumenti che usano il magnetismo

- **Strumento a bobina mobile**: un ago mosso da una bobina in un campo magnetico. Con una resistenza in **parallelo** (shunt) diventa **amperometro**; con una resistenza in **serie** diventa **voltmetro**.
- **Altoparlante** e **microfono dinamico**: bobina mobile in un magnete.

## Domande di prova

1. Cosa succede alla reattanza di un induttore se la frequenza raddoppia?
2. Due induttori da 4 µH e 6 µH in serie (non accoppiati): totale?
3. Come si trasforma uno strumento a bobina mobile in voltmetro?

> [!note]- Soluzioni
> 1. **Raddoppia**.
> 2. **10 µH**.
> 3. Con una **resistenza in serie**.

## Parole nuove

- **Henry (H)**: unità di misura dell'induttanza.
- **Ferrite**: materiale magnetico usato come nucleo in alta frequenza.
- **Shunt**: resistenza in parallelo a uno strumento.

## Per saperne di più

- [[04 Onde, condensatori e potenza]]
- [[06 Leggi di Kirchhoff e Ohm in alternata]]

## Fonti

- Programma d'esame, parte teoria; testo originale.
