# Release v.1.0.0 de MSPHY5973

Note du 29/09/2026, premier GDS d'assemblage.

Elle est mise à jour à chaque push de GDS et à chaque étape de vérification.

## Contenu

| Élément | Chemin | État |
|---|---|---|
| GDS de la puce, cellule de tête MSPHY5973 | `release/v.1.0.0/gds/MSPHY5973.gds.gz` | GDS d'assemblage, sans routage ni PDN de niveau puce |
| Netlist de la puce | `release/v.1.0.0/netlist/MSPHY5973.v` | Livrée |
| Rapports de vérification | `release/v.1.0.0/doc/` | À venir (mode coupe) |

Blocs placés :

- l'anneau MIPI_ring (ANALOG_DESIGN 7efada02e) ;
- csi2_top (livraison 78524823) ;
- dphy_rx (MR !7 et !8) et dphy_tx ;
- sr16_rx4 (caelum a0f94510f) ;
- 4 sr16_tx ;
- le seal ring.

Blocs non posés, faute de GDS : cml2cmos, tx_front (pont TX), PLL, HS_TX_PD.

Chaîne : chaîne nebula (NebulaChip, nebula_toolchain) pour la v1.0.0, flot LibreLane de sg13g2_mipileo (Léo Moser) en mise à jour.

## Vérifications

| Étape | État |
|---|---|
| Seal ring | Présent |
| Routage et PDN de niveau puce | Mise à jour |
| Remplissage | Mise à jour |
| DRC KLayout | Mise à jour |
| Précheck officiel IHP | Mise à jour |
| LVS | Mise à jour |
| Antennes | Mise à jour |
| STA de la puce | Mise à jour |
| Simulation de la puce entière | Mise à jour |
| Enregistrement du GDS (sans contexte de PCell, sans chemin de longueur nulle, unité 0,001 µm) | Contrôlé par verif_soumission_ihp.py |

## Limitations

- Mode coupe (D37) : les vérifications ci-dessus viennent après le premier GDS.
- GDS sans routage ni PDN de niveau puce, blocs cml2cmos, tx_front, PLL et HS_TX_PD non posés.
- Plots d'alimentation MIPI sans bondpad, à confirmer.
- Die de 2 560 µm, provisoire.
- csi2_top au coin lent : 104,1 MHz au plus en modes 00 à 10, 89,2 MHz en mode 11 (choix 58).
- Hold de dphy_rx à −0,042 ns au coin rapide (D36).
- Renvoi RX vers TX non fonctionnel, pont TX en cours (D38). Blocs TX placés, commandes tenues inactives.
- Aucune sortie de csi2_top sur une broche : réception non observable de l'extérieur.
- PLL absente, horloge HS du TX externe par CLKIN.
- Pas de vue Liberty pour dphy_rx, dphy_tx, sr16_tx et sr16_rx4.

## Changements

- v.1.0.0 : première soumission.
