---
tipo: guida
sezione: Energia e luce
livello: principiante
tempo_lettura: 8 minuti
ultima_revisione: 2026-11-16
---

# Piccolo impianto a 12 volt

> [!summary] In breve
> Un impianto a 12 V è fatto di 4 pezzi: **pannello solare → regolatore di carica → batteria → apparecchi** (luci LED, USB, radio).
> Usa una batteria **LiFePO4** o AGM, un **regolatore** adatto al tipo di batteria, e un **fusibile** vicino al polo positivo.
> Collega **sempre prima la batteria al regolatore**, poi il pannello, poi i carichi. Scollega in ordine inverso.
> Rosso = positivo (+), nero = negativo (−). Un cortocircuito su una batteria può **incendiare** i cavi.

## Perché è importante

Un impianto a 12 V fisso (in garage, cantina, camper, casetta di campagna) dà luce, ricarica e radio per mesi senza rete elettrica. È la stessa tensione dell'auto, quindi ci sono moltissimi accessori pronti. Se ti basta qualcosa di portatile, una [[Pannello solare e power station|power station]] è più semplice.

## Cosa ti serve (esempio di base)

| Pezzo | Esempio | Note |
|---|---|---|
| Pannello solare | 100-200 W, 12 V nominali | Rigido sul tetto o pieghevole |
| Regolatore di carica | **MPPT** 10-20 A | Deve supportare il tipo di batteria |
| Batteria | **LiFePO4 12 V 100 Ah** (circa 1,2 kWh) | Con BMS interno |
| Fusibili | Uno tra batteria e regolatore, uno su ogni uscita | Taglia in base ai cavi |
| Cavi | 6 mm² batteria-regolatore; 2,5 mm² per le luci | Più corti possibile |
| Prese/uscite | Prese accendisigari 12 V, USB 12 V | Con fusibile |
| Luci | Strisce o lampade LED 12 V | Consumano poco |

## Passo per passo

1. **Fissa** il regolatore a parete, vicino alla batteria (entro 1-2 m), in un posto asciutto e ventilato.
2. **Batteria → regolatore**: collega prima il **cavo nero (−)**, poi il **rosso (+)** con il **fusibile** montato vicino al polo positivo della batteria. Il regolatore si accende e riconosce la batteria.
3. **Imposta** sul regolatore il tipo di batteria (LiFePO4, AGM, ecc.).
4. **Pannello → regolatore**: copri il pannello (o fallo di sera), poi collega i cavi all'ingresso PV del regolatore rispettando + e −. Scopri il pannello: il regolatore deve mostrare la carica.
5. **Carichi**: collega luci e prese all'uscita LOAD del regolatore o direttamente alla batteria tramite una **scatola fusibili**.
6. **Prova** ogni uscita.
7. Per **staccare** tutto: prima i carichi, poi il pannello, per ultima la batteria.

## Quanto dura

Una batteria LiFePO4 da 100 Ah utilizzabile circa all'80-90% dà circa **1000 Wh**: per esempio 4 luci LED da 5 W per 5 ore (100 Wh), ricariche di telefoni e radio (100 Wh) e un router (60 Wh) al giorno → **circa 4 giorni** senza sole. Un pannello da 200 W in Puglia ricarica di solito 600-900 Wh in una giornata di sole.

## Errori da evitare

- **Niente fusibile** sulla batteria: un corto può far prendere fuoco ai cavi.
- **Collegare il pannello prima della batteria**: molti regolatori si danneggiano.
- **Cavi troppo sottili** o lunghi: si scaldano e perdono energia.
- Usare una batteria d'auto comune: si rovina presto se scaricata a fondo.
- Batterie al piombo in stanze chiuse durante la ricarica: producono idrogeno. Ventila.

## Parole nuove

- **Ah (amperora)**: capacità della batteria. Wh = Ah × V (100 Ah × 12 V = 1200 Wh).
- **MPPT**: tipo di regolatore che ricava più energia dal pannello.
- **BMS**: elettronica dentro le batterie al litio che le protegge.
- **Sezione del cavo (mm²)**: quanto è grosso il rame; più corrente = cavo più grosso.

## Per saperne di più

- [[Pannello solare e power station]]
- [[Riparazioni elettriche di base]]

## Fonti

- Manuali dei regolatori di carica MPPT (sequenza di collegamento), rielaborati.
- PVGIS, Commissione europea, producibilità in Puglia.
