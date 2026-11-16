---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 12 minuti
ultima_revisione: 2026-11-16
---

# 01 Elettricità, corrente e tensione

> **In breve**
> La materia è fatta di **atomi**: nucleo con **protoni** (+) e **neutroni**, intorno **elettroni** (−).
> **Corrente** (I, ampere A) = quante cariche passano in un secondo. **Tensione** (V, volt) = la "spinta" che le fa muovere. **Resistenza** (R, ohm Ω) = quanto il materiale si oppone.
> **Legge di Ohm**: **V = R × I**. **Potenza**: **P = V × I** (watt).
> Conduttori (rame, argento), isolanti (plastica, vetro), semiconduttori (silicio) a metà strada.

## L'idea con l'acqua

Immagina un tubo con l'acqua:
- la **tensione** è la differenza di **pressione** tra i due capi;
- la **corrente** è **quanta acqua** passa ogni secondo;
- la **resistenza** è quanto il tubo è **stretto**.

Più pressione → più acqua. Tubo più stretto → meno acqua. È esattamente la legge di Ohm.

## Atomi ed elettroni

- Ogni atomo ha lo stesso numero di protoni (+) ed elettroni (−): è **neutro**.
- Nei **metalli** alcuni elettroni esterni sono "liberi" di spostarsi: per questo conducono.
- La **carica** si misura in **coulomb** (C). Un elettrone ha una carica piccolissima (1,6 × 10⁻¹⁹ C).

## Le grandezze

| Grandezza | Simbolo | Unità | Si misura con |
|---|---|---|---|
| Carica | Q | coulomb (C) | — |
| Corrente | I | ampere (A) | amperometro, **in serie** |
| Tensione | V (o U, E) | volt (V) | voltmetro, **in parallelo** |
| Resistenza | R | ohm (Ω) | ohmmetro, a circuito spento |
| Potenza | P | watt (W) | wattmetro |
| Energia | W o E | joule (J) o wattora (Wh) | contatore |

**Corrente**: I = Q ÷ t (coulomb diviso secondi).

**Verso della corrente**: per convenzione si dice che va dal **+ al −** nel circuito esterno al generatore (gli elettroni in realtà vanno al contrario). All'esame si usa il verso **convenzionale**.

## Corrente continua e alternata

- **Continua (DC/CC)**: va sempre nello stesso verso, valore costante (pile, batterie).
- **Alternata (AC/CA)**: cambia verso molte volte al secondo (rete di casa: 230 V, 50 Hz). Vedi [03 Corrente alternata](03%20Corrente%20alternata.md).

## Resistenza di un filo

**R = ρ × l ÷ S**
- ρ (rho) = **resistività** del materiale (rame circa 0,0178 Ω·mm²/m);
- l = lunghezza in metri;
- S = sezione in mm².

Filo più **lungo** → più resistenza. Filo più **grosso** → meno resistenza. Con la temperatura la resistenza dei metalli **aumenta**.

Esempio: 100 m di filo di rame da 1 mm² → R = 0,0178 × 100 ÷ 1 = **1,78 Ω**.

## Legge di Ohm

**V = R × I** → **I = V ÷ R** → **R = V ÷ I**

Trucco del triangolo: scrivi V in alto, R e I in basso. Copri quello che cerchi: se gli altri due sono uno sopra l'altro si divide, se sono affiancati si moltiplica.

Esempio: una lampadina da 12 V assorbe 0,5 A. Resistenza: R = 12 ÷ 0,5 = **24 Ω**.

## Potenza

**P = V × I**, e quindi anche **P = R × I²** e **P = V² ÷ R**.

Esempio: resistenza da 100 Ω collegata a 10 V. I = 10 ÷ 100 = 0,1 A. P = 10 × 0,1 = **1 W** (verifica: V²/R = 100/100 = 1 W).

**Energia** = potenza × tempo. 1 kWh = 1000 W per un'ora.

## Codice colori dei resistori

I primi due anelli sono **cifre**, il terzo è il **moltiplicatore** (numero di zeri), il quarto la **tolleranza**.

| Colore | Cifra | Colore | Cifra |
|---|---|---|---|
| Nero | 0 | Verde | 5 |
| Marrone | 1 | Blu | 6 |
| Rosso | 2 | Viola | 7 |
| Arancio | 3 | Grigio | 8 |
| Giallo | 4 | Bianco | 9 |

Oro = ±5%, argento = ±10%. Esempio: giallo-viola-rosso-oro = 4, 7, ×100 = **4700 Ω = 4,7 kΩ** ±5%.

## Domande di prova

1. Una resistenza da 220 Ω è attraversata da 50 mA. Che tensione c'è ai suoi capi?
2. Un apparato da 12 V assorbe 2 A. Che potenza consuma?
3. Come si collega un voltmetro per misurare la tensione su un resistore?

> **Soluzioni** (prima prova a rispondere da solo)
> 1. V = 220 × 0,05 = **11 V**.
> 2. P = 12 × 2 = **24 W**.
> 3. In **parallelo** al resistore.

## Parole nuove

- **Conduttore / isolante / semiconduttore**: materiale che fa passare la corrente facilmente / quasi per niente / a metà strada.
- **Resistività**: quanto un materiale "di per sé" si oppone alla corrente.

## Per saperne di più

- [02 Generatori, serie e parallelo](02%20Generatori%2C%20serie%20e%20parallelo.md)
- Wikipedia offline: "Legge di Ohm".

## Fonti

- Programma d'esame (allegato 26 al Codice delle comunicazioni elettroniche, parte teoria); testo originale.
