---
tipo: guida
sezione: Comunicazioni
livello: principiante
tempo_lettura: 7 minuti
ultima_revisione: 2026-11-16
---

# Antenne di fortuna

> [!summary] In breve
> L'antenna conta più della radio. Con **filo elettrico**, un **cavo coassiale** e un po' di nastro puoi costruire un'antenna migliore di quella in dotazione.
> Il più semplice: il **dipolo**, due fili lunghi **ciascuno 1/4 della lunghezza d'onda**, collegati al centro del cavo.
> Formula per ogni braccio, in metri: **71,3 ÷ frequenza in MHz** (per esempio 145 MHz → 49 cm; 27 MHz → circa 2,64 m).
> **Alto e libero**: più su la metti, più lontano arrivi. **Mai** vicino a linee elettriche.
> Per trasmettere su bande radioamatoriali serve la patente; un'antenna migliore aiuta anche chi solo **ascolta**.

## Perché è importante

In emergenza l'antenna originale può rompersi, oppure serve arrivare più lontano. Antenne semplici fatte con materiali di casa possono raddoppiare la portata di una radio.

## Cosa ti serve

- **Filo** elettrico (anche quello di una prolunga, rame da 1-2,5 mm²).
- **Cavo coassiale** (RG58 per brevi tratti) con il connettore adatto alla tua radio.
- **Metro**, forbici, nastro isolante, fascette.
- Un **isolatore** centrale (pezzo di plastica, tappo, tagliere) e corda non conduttiva per appenderla.
- Un **rosmetro** per controllare (vedi [[CB 27 MHz]]).

## Antenna 1: dipolo

1. Calcola la lunghezza di **ogni braccio**: 71,3 ÷ frequenza (MHz). Esempi:

   | Frequenza | Ogni braccio |
   |---|---|
   | 27,1 MHz (CB) | 2,63 m |
   | 145 MHz (2 m) | 0,49 m |
   | 7,1 MHz (40 m) | 10,0 m |

2. **Taglia** due fili un po' più lunghi (5%), per poterli accorciare.
3. **Collega** al centro: la calza del coassiale a un filo, il conduttore centrale all'altro. Isola con il nastro e fissa all'isolatore.
4. **Appendi** in orizzontale (o a V rovesciata) il più in alto possibile, con corde, lontano da muri e metalli.
5. **Misura il ROS** e accorcia di poco entrambi i bracci finché è basso (sotto 1,5:1).

## Antenna 2: ground plane a 1/4 d'onda (per VHF)

1. Un filo **verticale** di 1/4 d'onda (per 145 MHz: circa 49 cm) collegato al conduttore centrale.
2. **Tre o quattro fili** della stessa lunghezza collegati alla calza, piegati verso il basso a circa 45°.
3. Appendila in alto. È omnidirezionale e molto efficace per ripetitori e PMR-simili.

## Antenna 3: solo per ascoltare onde corte

Un filo lungo **10-20 m**, isolato, teso il più in alto possibile e collegato alla presa per antenna esterna della radio (o avvolto intorno all'antenna telescopica). Migliora moltissimo la ricezione.

> [!warning] PMR446
> Sugli apparati **PMR446** l'antenna **non** si può cambiare per legge: devono restare come sono stati omologati.

## Errori da evitare

- Appendere antenne vicino a **linee elettriche**: pericolo di morte.
- Trasmettere con ROS alto: si danneggia la radio.
- Toccare l'antenna mentre si trasmette con potenze alte (ustioni da radiofrequenza).
- Lasciarla montata durante i **temporali**: staccala dalla radio.

## Parole nuove

- **Lunghezza d'onda**: la "misura" di un'onda radio; in metri ≈ 300 ÷ frequenza in MHz.
- **Coassiale**: cavo con un filo centrale e una calza intorno.
- **Ground plane**: antenna verticale con fili "a raggiera" che fanno da piano di terra.

## Per saperne di più

- [[13 Antenne]] (lezione del corso)
- [[CB 27 MHz]]
- [[Frequenze di emergenza e chiamata]]

## Fonti

- Teoria di base delle antenne (dipolo a mezz'onda, fattore di accorciamento circa 0,95), rielaborata.
