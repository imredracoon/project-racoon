---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 14 minuti
ultima_revisione: 2026-11-16
---

# 08 Trasformatori e circuiti RLC

> **In breve**
> **Trasformatore**: due avvolgimenti sullo stesso nucleo. **V2 ÷ V1 = N2 ÷ N1** (rapporto spire). La corrente fa il contrario: I2 ÷ I1 = N1 ÷ N2.
> Funziona solo in **alternata**. Trasforma anche le impedenze: **Z1 ÷ Z2 = (N1 ÷ N2)²**.
> **Risonanza**: un circuito con L e C ha una frequenza in cui XL = XC: **f₀ = 1 ÷ (2π √(L C))**.
> **LC serie** alla risonanza: impedenza **minima** (= R). **LC parallelo** alla risonanza: impedenza **massima**.
> **Fattore Q** e **banda passante**: B = f₀ ÷ Q.

## Il trasformatore

- **Primario** (N1 spire): riceve la tensione.
- **Secondario** (N2 spire): restituisce la tensione trasformata.
- Il **nucleo** (lamierini di ferro per la rete, ferrite per l'alta frequenza, aria in VHF) porta il campo magnetico dall'uno all'altro.

Formule (trasformatore ideale):
- **V2 = V1 × N2 ÷ N1**
- **I2 = I1 × N1 ÷ N2**
- **P1 = P2** (nella realtà un po' meno: rendimento).

Esempio: primario 230 V con 1000 spire, secondario 50 spire → V2 = 230 × 50/1000 = **11,5 V**.

### Trasformazione d'impedenza
**Z primario ÷ Z secondario = (N1 ÷ N2)²**. Per adattare 50 Ω a 200 Ω serve un rapporto spire 1:2 (rapporto impedenze 1:4). È il principio dei **balun** 1:4.

### Perdite
- Nel **rame** (resistenza degli avvolgimenti).
- Nel **ferro**: correnti parassite (si riducono con lamierini isolati) e isteresi.

### Usi
Alimentatori, adattatori d'impedenza, accoppiamento tra stadi, **balun** per antenne, **autotrasformatore** (un solo avvolgimento con presa intermedia; non isola dalla rete).

## Circuito RLC serie

R, L, C in serie. Alla **risonanza** XL = XC e si annullano:
- **Z = R** (minima);
- corrente **massima**;
- tensione e corrente **in fase**.

Sotto la risonanza prevale XC (comportamento capacitivo), sopra prevale XL (induttivo).

## Circuito LC parallelo (circuito "tank")

Alla risonanza:
- impedenza **massima** (in teoria infinita);
- corrente dal generatore **minima**;
- dentro il circuito circola una grande corrente tra L e C.

Si usa negli **oscillatori**, negli stadi accordati dei ricevitori e come "trappola".

## Frequenza di risonanza

**f₀ = 1 ÷ (2 × π × √(L × C))** (Hz, henry, farad)

Esempio: L = 10 µH, C = 100 pF → L × C = 10⁻¹⁵ → √ ≈ 3,16 × 10⁻⁸ → f₀ = 1 ÷ (6,28 × 3,16 × 10⁻⁸) ≈ **5,03 MHz**.

Regole pratiche: se **L o C aumentano**, f₀ **diminuisce**. Per **raddoppiare** f₀ bisogna ridurre il prodotto L × C di **quattro volte**.

## Fattore di merito e banda passante

**Q = XL ÷ R** (circuito serie). Più Q è alto, più la curva di risonanza è "stretta".

**Banda passante a −3 dB: B = f₀ ÷ Q**. Esempio: f₀ = 7 MHz, Q = 100 → B = **70 kHz**.

## Domande di prova

1. Un trasformatore ha rapporto spire 10:1 e primario a 230 V. Tensione al secondario?
2. In un LC serie alla risonanza, com'è l'impedenza?
3. Se in un circuito LC si quadruplica C, cosa succede alla frequenza di risonanza?

> **Soluzioni** (prima prova a rispondere da solo)
> 1. **23 V**.
> 2. **Minima**, uguale alla sola resistenza.
> 3. Si **dimezza**.

## Parole nuove

- **Balun**: trasformatore che collega una linea sbilanciata (coassiale) a una bilanciata (dipolo).
- **Risonanza**: frequenza a cui reattanza induttiva e capacitiva sono uguali.
- **Circuito tank**: LC parallelo.

## Per saperne di più

- [05 Elettromagnetismo e induttori](05%20Elettromagnetismo%20e%20induttori.md)
- [09 Filtri e semiconduttori](09%20Filtri%20e%20semiconduttori.md)

## Fonti

- Programma d'esame, parte teoria; testo originale.
