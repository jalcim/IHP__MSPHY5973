# Release v.1.0.0 de MSPHY5973

Note pré-remplie le 29/09/2026, avant le premier GDS.

Elle est mise à jour à chaque push de GDS et à chaque étape de vérification.

## Contenu

| Élément | Chemin | État |
|---|---|---|
| GDS de la puce, cellule de tête MSPHY5973 | `release/v.1.0.0/gds/` | À venir |
| Netlist de la puce | `release/v.1.0.0/netlist/` | À venir |
| Rapports de vérification | `release/v.1.0.0/doc/` | À venir (mode coupe) |

La puce assemble :

- l'anneau MIPI_ring (ANALOG_DESIGN 7efada02e) ;
- csi2_top (livraison 78524823) ;
- top_rx et dphy_rx (MR !7 et !8) ;
- sr16_rx4 (caelum 7061656b8) ;
- 33 cml_to_cmos (CML_LIB, ANALOG_DESIGN fe70f9b8e) ;
- les blocs TX : dphy_tx, 4 sr16_tx, HS_TX_PD (ANALOG_DESIGN 25a940756).

Chaîne : flot LibreLane de sg13g2_mipileo (Léo Moser).

## Vérifications

| Étape | État |
|---|---|
| Seal ring | Prévu dans le premier GDS |
| Remplissage | Mise à jour |
| DRC KLayout | Mise à jour |
| Précheck officiel IHP | Mise à jour |
| LVS | Mise à jour |
| Antennes | Mise à jour |
| STA de la puce | Mise à jour |
| Simulation de la puce entière | Mise à jour |
| Enregistrement du GDS (sans contexte de PCell, sans chemin de longueur nulle) | À vérifier sur le premier GDS |

## Limitations

- Mode coupe (D37) : les vérifications ci-dessus viennent après le premier GDS.
- Die de 2 480 µm, provisoire.
- csi2_top au coin lent : 104,1 MHz au plus en modes 00 à 10, 89,2 MHz en mode 11 (choix 58).
- Hold de dphy_rx à −0,042 ns au coin rapide (D36).
- Renvoi RX vers TX non fonctionnel, pont TX en cours (D38). Blocs TX placés, commandes tenues inactives.
- Aucune sortie de csi2_top sur une broche : réception non observable de l'extérieur.
- PLL absente, horloge HS du TX externe par CLKIN.
- Pas de vue Liberty pour dphy_rx, dphy_tx, sr16_tx et sr16_rx4.

## Changements

- v.1.0.0 : première soumission.
