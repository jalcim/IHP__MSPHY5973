# Mixed-Signal IP Quality Assessment using TRL scale

The provided set of the quality assessment criteria, using TRL (Technology Readiness Level) scale, is a tool for designers to auto evaluate a submitted design. The purpose of this tool is to
have a short overview of IP in terms of its maturity.

Auto-évaluation de MSPHY5973 au 29/09/2026, avant le premier GDS.

Seules les cases prouvées sont cochées, avec leur preuve.

Les preuves marquées « mipi » sont dans le dépôt privé nebula_microsystems/mipi (GitLab), au commit indiqué.

Niveau atteint : **TRL 0**. TRL1 n'est pas complet.

---

## TRL1 - Basic principles observed

- [x] Is the IP functionality clearly described?
  - Preuve : `doc/Specification.md` et `README.md` de ce dépôt.
- [ ] Is the IP principle of operation explained in detail?
  - Partiel : chaîne de réception décrite par bloc dans `doc/Specification.md`, fonctionnement des plots HS non décrit ici.
- [ ] Are the IP architecture design equations fully listed?
  - Partiel : relations de débit et d'horloge dans `doc/Specification.md`, section « Débits ».
- [ ] Do authors supply any mixed-signal HDL functional model (e.g. Verilog-A) of the IP?
  - Partiel, par bloc : `3_digital/CML_SR/SR16_RX4/COLLATERALS/HDL/sr16_mot.vhd` et `2_analog/TEMPO/HDL/tempo.vhd` (mipi, caelum 7ed5d558d). Pas de modèle de la puce entière.
- [ ] Are functional simulation results of the IP reported for a typical case?
  - Partiel, par bloc : 24 mesures des machines d'états aux 3 coins, `3_digital/DPHY_SM/TESTS.md` (mipi, caelum 7ed5d558d). Simulation de la puce entière en mise à jour (mode coupe).

## TRL2 - Concept formulation

- [x] Is the IP architecture described at block level?
  - Preuve : `README.md` (« Blocs et sources ») et `doc/Specification.md` (« Blocs ») de ce dépôt.
- [ ] Are the specifications of each individual block of the IP architecture clearly identified?
- [ ] If the IP architecture can be configured by means of internal registers, is their mapping declared?
  - Sans objet : aucun registre interne, configuration par les broches EN[3:0] et RENVOI_MODE[1:0].
- [ ] Do authors supply a complete test bench to validate the IP block-level architecture?
- [ ] Is any verification procedure given to check the IP block-level performance figures?
- [ ] Are architectural simulation results of the IP reported for a typical case?

## TRL3 - Proof of concept at schematic level

- [ ] Are the IP schematics available at transistor level (analog parts) and gate level (digital parts)?
  - Partiel, par bloc : netlist de csi2_top (mipi, 78524823, `3_digital/livraison/csi2_top/COLLATERALS/HDL/csi2_top.v`). Netlist de la puce à venir.
- [x] Are all dependencies of the IP schematics on logic libraries declared?
  - Preuve : `README.md` de ce dépôt, bibliothèque `sg13g2_stdcell` du PDK, et `doc/info.json` (`pdk_version`).
- [ ] Are the analog IP ports fully specified at electrical level?
  - Tensions d'E/S et niveaux de CLKIN : TBD.
- [x] Are the digital IP ports fully specified at logical level (e.g. protocols)?
  - Preuve : `doc/Specification.md`, section « Broches numériques » (CLK_SYS, RST_N, EN[3:0], RENVOI_MODE[1:0]).
- [ ] Do authors supply a mixed-signal test bench to validate the IP schematics?
- [ ] Is any verification procedure given to check the IP schematic performance figures?
- [ ] Are mixed-signal simulation results of the IP schematics reported for a typical case?

## TRL4 - Full design at schematic level

- [ ] Are the mixed-signal simulation results of the IP schematics extended to process, supply and temperature (PVT) corners?
- [ ] Are the mixed-signal simulation results of the IP schematics extended to technology mismatching?
- [ ] Are the authors defining the mixed-signal supply domains of the IP schematics and their individual power requirements?
- [ ] Does the IP description include any power consumption model (e.g. as a function of input stimuli)?

## TRL5 - Full design at layout level

- [ ] Is the IP complete layout available?
  - Premier GDS à venir.
- [ ] Are all dependencies of the IP layout on logic libraries declared?
- [ ] Do authors supply a clean DRC report?
  - Mise à jour (mode coupe).
- [ ] Do authors supply a clean LVS report?
  - Mise à jour (mode coupe).
- [ ] Are post-layout mixed-signal simulation results of the IP layout reported for PVT corners?

## TRL6 - Full design for SoC integration

- [ ] Does the IP come with suitable descriptors for digital-on-top integration (e.g. Liberty, LEF)?
- [ ] Is the IP incorporating any BIST mechanism? If so, is it properly documented?
- [ ] Does the IP document fully define its digital interface?
  - Numéros de broche QFN64 : TBD.

## TRL7 - Lab demonstrator prototype

- [ ] Has any dedicated test chip been designed for the hard IP?
- [ ] Is the hard IP test chip fully documented (e.g. pad ring)?
- [ ] Are experimental results available from the IP dedicated test chip (Silicon proven)?
- [ ] Do authors supply any comprehensive comparison between IP test chip and post-layout results?

## TRL8 - In-field demonstrator prototype

- [ ] Has the hard IP been integrated in a SoC context?
- [ ] Are experimental IP results available from this SoC (Silicon proven)?
- [ ] Do authors supply any comprehensive comparison between IP SoC and test-chip results?

## TRL9 - Commercial application

- [ ] Are the IP authors providing support for bug fixing or enhancement requests?
- [ ] Does the IP documentation include any training materials?
- [x] Are the EDA tools and versions used for developing the IP documented?
  - Preuve : `doc/info.json` (champ `tools`) et `README.md` (« Chaîne de conception ») de ce dépôt.
- [ ] Is the hard IP integrated in any commercial IC?
