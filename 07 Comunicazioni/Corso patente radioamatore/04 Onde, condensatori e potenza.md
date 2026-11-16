---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 14 minuti
ultima_revisione: 2026-11-16
---

# 04 Onde, condensatori e potenza

> [!summary] In breve
> **Lunghezza d'onda**: **λ (m) = 300 ÷ f (MHz)**. 7 MHz → circa 43 m ("banda dei 40 metri"); 145 MHz → circa 2 m.
> Il **condensatore** accumula cariche: capacità C in **farad** (in pratica µF, nF, pF). **Q = C × V**.
> Condensatori in **parallelo** si sommano; in **serie** si calcolano come le resistenze in parallelo.
> In alternata il condensatore ha una **reattanza** **Xc = 1 ÷ (2π f C)**: più alta la frequenza, **meno** si oppone.
> **Decibel**: dB = 10 × log(P2/P1). +3 dB = potenza doppia, +10 dB = dieci volte.

## Lunghezza d'onda

Le onde radio viaggiano alla velocità della luce: circa **300 000 km/s**. La lunghezza d'onda è lo spazio percorso in un ciclo:

**λ = c ÷ f** → in pratica **λ (metri) = 300 ÷ f (MHz)**.

| Frequenza | Lunghezza d'onda | Nome della banda |
|---|---|---|
| 3,6 MHz | 83 m | 80 m |
| 7,1 MHz | 42 m | 40 m |
| 14,2 MHz | 21 m | 20 m |
| 28,5 MHz | 10,5 m | 10 m |
| 145 MHz | 2,07 m | 2 m |
| 435 MHz | 0,69 m | 70 cm |

Esempio: λ = 20 m → f = 300 ÷ 20 = **15 MHz**.

## Il condensatore

Due piastre conduttrici separate da un **isolante** (dielettrico). Collegato a una tensione si **carica**: su una piastra si accumulano cariche +, sull'altra −.

- **Capacità**: C = Q ÷ V, in **farad**. 1 µF = 10⁻⁶ F, 1 nF = 10⁻⁹ F, 1 pF = 10⁻¹² F.
- La capacità **aumenta** con piastre più grandi, più vicine e con un dielettrico migliore: C = ε × S ÷ d.
- In **corrente continua** un condensatore carico **blocca** la corrente.
- In **alternata** si carica e si scarica continuamente e lascia passare la corrente.

Tipi:
- **ceramici**: piccoli valori (pF, nF), alta frequenza;
- **elettrolitici**: grandi valori (µF), **polarizzati** (hanno un + e un −: montati al contrario possono esplodere);
- **variabili**: per sintonizzare.

| Collegamento | Formula |
|---|---|
| **Parallelo** | C = C1 + C2 + ... |
| **Serie** | 1/C = 1/C1 + 1/C2 (due: C1×C2 ÷ (C1+C2)) |

Attenzione: è il **contrario** delle resistenze.

Energia accumulata: W = ½ × C × V². Per questo un condensatore grosso carico può dare una scossa anche ad apparato spento.

## Reattanza capacitiva

**Xc = 1 ÷ (2 × π × f × C)** (ohm, con f in Hz e C in farad).

- f alta → Xc **bassa** (passa).
- f bassa → Xc **alta** (blocca). In continua Xc è infinita.
- Nel condensatore la corrente è **in anticipo di 90°** sulla tensione.

Esempio: C = 100 pF, f = 10 MHz → Xc = 1 ÷ (6,28 × 10⁷ × 10⁻¹⁰) = 1 ÷ 0,00628 ≈ **159 Ω**.

## Potenza e decibel

In radio si confrontano potenze molto diverse: si usa il **decibel**.

**dB = 10 × log₁₀ (P2 ÷ P1)**; per tensioni: **dB = 20 × log₁₀ (V2 ÷ V1)**.

| Rapporto di potenza | dB |
|---|---|
| ×2 | +3 dB |
| ×4 | +6 dB |
| ×10 | +10 dB |
| ×100 | +20 dB |
| ÷2 | −3 dB |

I dB si **sommano**: un amplificatore da +10 dB seguito da un cavo che perde 3 dB dà +7 dB totali (circa ×5).

**dBm**: potenza riferita a 1 mW. 0 dBm = 1 mW, 30 dBm = 1 W, 50 dBm = 100 W.

Esempio: da 10 W a 100 W il rapporto è 10 → **+10 dB**.

## Domande di prova

1. Quale lunghezza d'onda corrisponde a 50 MHz?
2. Due condensatori da 10 nF in serie: capacità totale?
3. Un amplificatore porta 5 W a 20 W. Quanti dB di guadagno?

> [!note]- Soluzioni
> 1. 300 ÷ 50 = **6 m**.
> 2. **5 nF**.
> 3. Rapporto 4 → **6 dB**.

## Parole nuove

- **Dielettrico**: l'isolante tra le piastre.
- **Reattanza**: "resistenza" in alternata di condensatori e induttori, che dipende dalla frequenza.
- **Decibel**: unità per esprimere rapporti in modo logaritmico.

## Per saperne di più

- [[05 Elettromagnetismo e induttori]]
- [[Antenne di fortuna]]

## Fonti

- Programma d'esame, parte teoria; testo originale.
