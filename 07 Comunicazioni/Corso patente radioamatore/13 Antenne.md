---
tipo: guida
sezione: Corso patente radioamatore
livello: principiante
tempo_lettura: 16 minuti
ultima_revisione: 2026-11-16
---

# 13 Antenne e propagazione

> [!summary] In breve
> **Dipolo a mezz'onda**: lungo **λ/2** (in pratica λ/2 × 0,95), impedenza circa **73 Ω** al centro, irradia di più **di lato** al filo.
> **Verticale a quarto d'onda (ground plane)**: lunga **λ/4**, circa **36 Ω** (50 Ω con i radiali inclinati), irradia **in tutte le direzioni** orizzontali.
> **Yagi**: elemento alimentato + **riflettore** dietro (più lungo) + **direttori** davanti (più corti) = **guadagno** in una direzione.
> **Guadagno**: dBi (rispetto all'antenna isotropica) = dBd + **2,15**. **ERP** = potenza × guadagno − perdite.
> **Propagazione**: onda di **terra** (onde lunghe e medie), onda **ionosferica** che rimbalza sugli strati D, E, F (onde corte), **portata ottica** in VHF/UHF.

## Come irradia un'antenna

In un'antenna la corrente a radiofrequenza crea un campo **elettrico** e uno **magnetico** perpendicolari tra loro, che si staccano e viaggiano nello spazio come **onda elettromagnetica**.

**Polarizzazione** = direzione del campo elettrico:
- antenna **orizzontale** → polarizzazione **orizzontale**;
- antenna **verticale** → polarizzazione **verticale** (tipica dei ripetitori VHF/UHF e delle radio portatili).

Se trasmettitore e ricevitore hanno polarizzazioni diverse in VHF si perdono anche **20 dB**.

## Il dipolo a mezz'onda

- Due bracci di **λ/4** ciascuno, alimentati al centro.
- Lunghezza pratica totale: **L (m) ≈ 142,5 ÷ f (MHz)** (λ/2 × 0,95, il **fattore di accorciamento** dovuto allo spessore e agli effetti di estremità).
- Impedenza al centro ≈ **73 Ω** in spazio libero (scende se è basso sul terreno).
- Diagramma di radiazione a **"8"**: massimo di lato, minimo nella direzione del filo.
- Variante **V invertita**: centro in alto, estremità verso il basso; impedenza più vicina a 50 Ω.
- Al centro: **massimo di corrente**, minimo di tensione. Alle estremità: **massimo di tensione** (attenzione agli isolatori).

Esempio: dipolo per 7,1 MHz → 142,5 ÷ 7,1 ≈ **20 m** totali.

Vedi anche [[Antenne di fortuna]] per costruirne uno.

## La verticale a quarto d'onda

- Un elemento verticale di **λ/4** e un **piano di terra** (radiali o il tetto dell'auto).
- Impedenza ≈ **36 Ω** con radiali orizzontali; con i radiali inclinati verso il basso si avvicina a **50 Ω**.
- Irradia uguale in **tutte le direzioni** orizzontali (omnidirezionale), con angolo basso.
- Variante **5/8 λ** per VHF: più guadagno.

## Antenne direttive: la Yagi

- **Elemento alimentato** (un dipolo).
- **Riflettore** dietro, un po' **più lungo**.
- Uno o più **direttori** davanti, un po' **più corti**.
- Più elementi = più **guadagno** e fascio più stretto.
- **Rapporto avanti/indietro** (F/B): quanto riceve meno da dietro (dB).

Altre: **quad** (spire quadrate), **log-periodica** (larga banda), **collineare** (verticali in fila per VHF/UHF), **loop magnetico** (piccola, per spazi ridotti).

## Guadagno, ERP

- **Antenna isotropica**: ideale, irradia uguale in tutte le direzioni. Riferimento **dBi**.
- **Dipolo**: guadagno **2,15 dBi** = **0 dBd**.
- **dBi = dBd + 2,15**.
- **ERP** (potenza irradiata efficace, riferita al dipolo) = potenza del trasmettitore − perdite del cavo + guadagno dell'antenna (in dBd). **EIRP** = idem riferito all'isotropica.

Esempio: 100 W (50 dBm), cavo −3 dB, Yagi +9 dBd → 56 dBm = circa **400 W ERP**.

## Linee di trasmissione

| Tipo | Impedenza | Note |
|---|---|---|
| **Coassiale** (RG58, RG213, H155, LMR400...) | 50 Ω (75 Ω per TV) | **Sbilanciata**, schermata, comoda |
| **Linea bifilare / piattina** | 300-600 Ω | **Bilanciata**, perdite molto basse |

- Le **perdite** del cavo aumentano con la **frequenza** e con la **lunghezza**. In UHF un RG58 lungo perde moltissimo: usa cavi a bassa perdita.
- **Fattore di velocità**: nel cavo l'onda è più lenta (circa 0,66 nel coassiale con dielettrico pieno, 0,8 in quello espanso). Conta per gli spezzoni "a λ/4" usati come adattatori.
- Collegare un dipolo (bilanciato) a un coassiale (sbilanciato): si usa un **balun 1:1**.
- Un **accordatore d'antenna** adatta l'impedenza vista dal trasmettitore; non rende "migliore" l'antenna.

## Propagazione

### Onda di terra (superficiale)
Segue la curvatura della Terra. Importante in **onde lunghe e medie** (le stazioni AM di giorno). Si attenua più in fretta salendo di frequenza; sul **mare** va meglio che sulla terra secca.

### Onda ionosferica (spaziale)
La **ionosfera** (50-500 km di quota) è ionizzata dal Sole e **riflette** (rifrange) le onde corte verso terra, permettendo collegamenti a migliaia di km.

| Strato | Quota | Comportamento |
|---|---|---|
| **D** | 60-90 km | Solo di **giorno**; **assorbe** le frequenze basse (80-160 m di giorno vanno poco lontano) |
| **E** | 90-130 km | Di giorno; a volte **E sporadico** d'estate (aperture improvvise su 10 m, 6 m, 2 m) |
| **F1 / F2** | 150-400 km | **F2** è il principale per i collegamenti lunghi; di notte F1 e F2 si uniscono in F |

- **MUF** (massima frequenza utilizzabile): sopra, l'onda attraversa la ionosfera e si perde nello spazio.
- **Zona di silenzio (skip)**: area troppo lontana per l'onda di terra e troppo vicina per il primo rimbalzo.
- **Ciclo solare** di circa **11 anni**: con molte macchie solari le bande alte (15, 12, 10 m) si aprono di più.
- Regole pratiche: **di giorno** bande alte (20, 15, 10 m); **di notte** bande basse (40, 80, 160 m). La banda dei **40 m** è la più adatta ai collegamenti in Italia (NVIS con antenne basse).
- **Fading** (QSB): il segnale va e viene per le variazioni della ionosfera.

### VHF e UHF
- Propagazione in **portata ottica**, poco oltre l'orizzonte. **Altezza** dell'antenna = portata.
- Orizzonte radio approssimato: **d (km) ≈ 4,1 × (√h1 + √h2)** con le altezze in metri.
- **Propagazione troposferica** (inversioni termiche): a volte collegamenti di centinaia di km, frequenti sull'Adriatico in estate.
- Riflessioni su montagne, aerei, scie meteoriche; **EME** (rimbalzo sulla Luna).

## Sicurezza

- Antenne **lontane** dalle linee elettriche.
- Stazione e antenne collegate a **terra**; staccare le antenne durante i **temporali**.
- Rispettare i limiti di **esposizione ai campi elettromagnetici** (distanza dalle persone).

## Domande di prova

1. Quanto è lungo circa un dipolo per 14,2 MHz?
2. Un'antenna ha guadagno 6 dBd. Quanti dBi?
3. Quale strato ionosferico assorbe le frequenze basse durante il giorno?
4. In una Yagi, il riflettore è più lungo o più corto dell'elemento alimentato?

> [!note]- Soluzioni
> 1. 142,5 ÷ 14,2 ≈ **10 m**.
> 2. 6 + 2,15 = **8,15 dBi**.
> 3. Lo strato **D**.
> 4. **Più lungo**.

## Parole nuove

- **Isotropica**: antenna ideale che irradia uguale in tutte le direzioni.
- **Ionosfera**: strati alti dell'atmosfera ionizzati dal Sole.
- **MUF**: frequenza massima che la ionosfera riflette per un certo collegamento.
- **NVIS**: onde che salgono quasi in verticale e ricadono vicino, coprendo regioni intere.

## Per saperne di più

- [[Antenne di fortuna]]
- [[14 Regolamenti e procedure operative]]

## Fonti

- Programma d'esame, parte teoria; testo originale.
