# Datasheet de MSPHY5973

Version v1.0.0, pré-remplie le 29/09/2026 avant le premier GDS.

Valeurs de conception et de simulation, pas de mesure sur silicium.

Toute valeur marquée TBD est encore inconnue.

## Caractéristiques

| Paramètre | Valeur |
|---|---|
| Technologie | IHP SG13G2 (BiCMOS 130 nm) |
| Cellule de tête | MSPHY5973 |
| Die | 2 560 × 2 560 µm, provisoire |
| Boîtier visé | QFN64 d'IHP |
| Interface reçue | MIPI CSI-2 sur D-PHY, 1 lane d'horloge et 4 lanes de données |
| Débit HS visé | 1 Gbit/s par lane, 4 Gbit/s au total |
| Lanes activables | 1, 2 ou 4 (EN[3:0]) |
| Horloge système | CLK_SYS, 125,125 MHz |
| Horloge de mot | Wclk = HSCLK / 4, 125 MHz au plus |
| Horloge HS du TX | Externe, par CLKIN (pas de PLL) |
| Tension de cœur | 1,2 V nominal |
| Tensions d'E/S | TBD |
| Consommation | TBD |
| Chaîne de conception | chaîne nebula (NebulaChip, nebula_toolchain) pour la v1.0.0, flot LibreLane de sg13g2_mipileo (Léo Moser) en mise à jour |

## Timing de csi2_top par mode de renvoi

STA de signoff de la macro, OCV ±5 %, run `tapeout_s3r_t4_R1_13_d60` (livraison 78524823).

| Mode | Coin | Setup (ns) | Hold (ns) | Fréquence max de CLK_SYS |
|---|---|---|---|---|
| 00, 01, 10 | lent (1,08 V, 125 °C) | −1,615 | +0,171 à +0,329 | 104,1 MHz |
| 11 | lent (1,08 V, 125 °C) | −3,215 | +0,329 | 89,2 MHz |
| 00, 01, 10 | typique (1,20 V, 25 °C) | +1,858 | +0,185 | ≥ 125,125 MHz |
| 11 | typique (1,20 V, 25 °C) | +0,803 | +0,185 | ≥ 125,125 MHz |
| 00, 01, 10 | rapide (1,32 V, −40 °C) | +3,859 | +0,097 | ≥ 125,125 MHz |
| 11 | rapide (1,32 V, −40 °C) | +3,129 | +0,097 | ≥ 125,125 MHz |

## Timing des machines d'états du D-PHY

Horloge de 500 MHz, relevé du 29/09/2026 (MACRO.md, caelum 7ed5d558d).

| Macro | Setup, coin lent | Hold, coin rapide |
|---|---|---|
| dphy_rx | −0,125 ns (+0,58 ns en typique) | −0,042 ns |
| dphy_tx | −0,99 ns (tenu en typique) | −0,04 ns |

Les chemins qui traversent les cellules de temporisation ne sont pas analysés (pas de vue Liberty).

## Macros

| Macro | Taille (µm) | Vues livrées |
|---|---|---|
| csi2_top | 1 368,515 × 1 387,235 | GDS, LEF, netlist, Liberty (3 coins), SDF, SPEF, SDC |
| dphy_rx | 361 × 302 | GDS, LEF, DEF, HDL, SPICE |
| dphy_tx | 286 × 302 | GDS, LEF, DEF, HDL, SPICE |
| sr16_rx4 | TBD à l'assemblage | GDS, LEF, DEF, SPICE |
| sr16_tx | TBD à l'assemblage | GDS, LEF, DEF, SPICE |

## Vérifications

| Vérification | Blocs | Puce |
|---|---|---|
| DRC KLayout | dphy_rx, dphy_tx : 0 | Mise à jour (mode coupe) |
| LVS | dphy_rx, dphy_tx : 0 | Mise à jour (mode coupe) |
| Antennes | dphy_rx, dphy_tx : 0 | Mise à jour (mode coupe) |
| Signoff de csi2_top | DRC et LVS en cours à la livraison 78524823 | Sans objet |
| Précheck officiel IHP | Sans objet | Mise à jour (mode coupe) |
| Remplissage | Sans objet | Mise à jour (mode coupe) |
| STA | Tableaux ci-dessus | Mise à jour (mode coupe) |
| Simulation | Machines d'états : 24 mesures aux 3 coins | Mise à jour (mode coupe) |

## Règles de carte

- Toute lane de données RX inutilisée a ses deux broches P et N reliées à la masse.
- Le plot du bandgap reçoit une résistance externe de 11 kΩ (commit 9ab74c027).
- CLKIN porte l'horloge HS du TX. Fréquence et niveaux : TBD.

## Valeurs limites

Tensions et courants maximaux : TBD.
