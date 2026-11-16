---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 13 minuti
ultima_revisione: 2026-11-16
---

# 09 Filtri e semiconduttori

> **In breve**
> **Filtri**: **passa-basso** (lascia passare le frequenze basse), **passa-alto** (le alte), **passa-banda** (solo una banda), **elimina-banda** o **notch** (toglie una banda).
> Frequenza di taglio di un filtro RC: **fc = 1 ÷ (2π R C)**; lì il segnale è sceso di **3 dB**.
> Il **quarzo** è un cristallo piezoelettrico che risuona a una frequenza molto precisa: usato in oscillatori e filtri stretti.
> **Semiconduttori**: silicio (Si) e germanio (Ge). **Drogati** diventano di tipo **N** (elettroni in più) o **P** (lacune). La giunzione **PN** conduce in un solo verso.
> Soglia di conduzione: circa **0,6-0,7 V** per il silicio, **0,2-0,3 V** per il germanio.

## I filtri

Un filtro lascia passare alcune frequenze e ne attenua altre. Si costruiscono con R, L, C o con quarzi.

| Tipo | Lascia passare | Esempio di uso |
|---|---|---|
| **Passa-basso** | Sotto fc | Togliere le armoniche all'uscita del trasmettitore |
| **Passa-alto** | Sopra fc | Togliere disturbi di bassa frequenza; filtro all'ingresso del televisore contro i disturbi HF |
| **Passa-banda** | Tra f1 e f2 | Filtro di media frequenza del ricevitore |
| **Elimina-banda / notch** | Tutto tranne una banda | Togliere un fischio o un segnale interferente |

### Filtri RC e LC
- **RC passa-basso**: R in serie, C verso massa. **RC passa-alto**: C in serie, R verso massa.
- **LC passa-basso**: L in serie, C verso massa (L blocca le alte, C le manda a massa).
- **LC passa-alto**: C in serie, L verso massa.
- Frequenza di taglio RC: **fc = 1 ÷ (2 × π × R × C)**.

Esempio: R = 1 kΩ, C = 100 nF → fc = 1 ÷ (6,28 × 1000 × 0,000 000 1) ≈ **1,6 kHz**.

### Banda passante e pendenza
- **Banda passante**: l'intervallo tra i due punti a −3 dB.
- **Pendenza**: quanto rapidamente attenua fuori banda (dB per ottava o per decade). Più celle in cascata = pendenza maggiore.

## Il quarzo e la piezoelettricità

**Piezoelettricità**: alcuni cristalli (quarzo) producono una tensione se vengono deformati e, al contrario, si deformano se ricevono una tensione. Un quarzo tagliato in un certo modo vibra a una **frequenza precisissima**.

- Si comporta come un circuito risonante con **Q altissimo** (decine di migliaia).
- Usato negli **oscillatori** stabili e nei **filtri a quarzo** stretti della media frequenza (per esempio 2,4 kHz per SSB, 500 Hz per CW).
- Ha una risonanza **serie** e una **parallelo**, molto vicine.

## I semiconduttori

### Materiali
- **Silicio (Si)** e **germanio (Ge)**, con 4 elettroni esterni.
- Puri conducono poco. La loro resistenza **diminuisce** con la temperatura (al contrario dei metalli).
- Per l'alta frequenza si usa anche l'**arseniuro di gallio** (GaAs).

### Drogaggio
- **Tipo N**: si aggiungono atomi con **5** elettroni esterni (fosforo, arsenico). Ci sono **elettroni liberi** in più (cariche negative).
- **Tipo P**: si aggiungono atomi con **3** elettroni esterni (boro, gallio). Mancano elettroni: ci sono **lacune** (cariche positive).

### La giunzione PN
Unendo un pezzo P e un pezzo N, al confine si forma una **zona di svuotamento** senza cariche libere, con una piccola barriera di tensione.
- **Polarizzazione diretta** (+ sulla P, − sulla N): sopra la soglia (≈ 0,6-0,7 V Si) la giunzione **conduce**.
- **Polarizzazione inversa** (+ sulla N): **non conduce** (solo una piccolissima corrente di perdita), finché non si arriva alla **tensione di rottura** (breakdown).

È il principio del **diodo** ([10 Diodi e transistor](10%20Diodi%20e%20transistor.md)).

## Domande di prova

1. Quale filtro si mette all'uscita di un trasmettitore per ridurre le armoniche?
2. Un filtro RC ha R = 10 kΩ e C = 10 nF. Frequenza di taglio circa?
3. Cosa si aggiunge al silicio per ottenere un semiconduttore di tipo P?

> **Soluzioni** (prima prova a rispondere da solo)
> 1. Un **passa-basso**.
> 2. 1 ÷ (6,28 × 10 000 × 0,000 000 01) ≈ **1,6 kHz**.
> 3. Atomi con **3** elettroni esterni (es. **boro**), che creano **lacune**.

## Parole nuove

- **Frequenza di taglio**: dove il filtro attenua di 3 dB (metà potenza).
- **Lacuna**: "posto vuoto" lasciato da un elettrone, si comporta come una carica positiva.
- **Drogaggio**: aggiunta controllata di impurità a un semiconduttore.

## Per saperne di più

- [08 Trasformatori e circuiti RLC](08%20Trasformatori%20e%20circuiti%20RLC.md)
- [10 Diodi e transistor](10%20Diodi%20e%20transistor.md)

## Fonti

- Programma d'esame, parte teoria; testo originale.
