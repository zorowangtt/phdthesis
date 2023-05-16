<!-- ---
title: ""

documentclass: article

header-includes:
    - \usepackage{times}
    - \usepackage{bm}
    - \usepackage{textalpha} 
    # - \usepackage[left]{lineno}
    # - \linenumbers
    - \usepackage{setspace}
    - \usepackage{color}
    - \linespread{1.5}
    - \usepackage{blindtext, showframe, fancyhdr}

    - \begin{document}
    - \chapter{First chapter}
    - \section{First section}
    - \blindtext
    - \clearpage
    - \Blindtext
    - \end{document}

    - \lhead{Left of header}
    - \chead{center of header (on page \thepage)}
    - \rhead{Right of header}

--- -->

\newpage

# Effects of Ligand Binding on the Dimeric Sensory Domain of *Bj*FixL: Computational Analysis of Vibrational Energy Transfer Pathways

<!-- Tingting Wang^1^, Takahisa Yamato^1,\*^, Hiroshi Sugimoto^2^, Hiroyasu
Koteishi^3^, Yoshitsugu Shiro^3^

^1^Graduate School of Science, Nagoya University, Furo-cho, Chikusa-ku,
Nagoya 464-8602, Japan

^2^Synchrotron Radiation Life Science Instrumentation Team, RIKEN
SPring-8 Center.

^3^Graduate School of Life Science, University of Hyogo.

\*Corresponding author

Takahisa Yamato, Phone: +81 52 789 2914; Email: yamato@nagoya-u.jp

**\
** -->

## ABSTRACT

The effects of ligand binding and dimerization in an oxygen sensor
protein, *Bj*FixLH, were revisited by molecular dynamics simulation. We
employed the energy exchange network (EEN) model on both active and
inactive forms of *Bj*FixLH (ligand-free state and imidazole-bound
state) in which the interactions of native contacts were evaluated in
terms of local transport coefficients of energy flow. A vibrational
energy transport pathway is characterized to illustrate the signaling
transmission pathway. The allosteric effect induced from heme core upon
imidazole binding, starts from the FG loop, through an internal
hydrophobic G/H/I $\beta$ strands bridge and coiled-coil linker region, to the
kinase domain. The ligand binding will cause destabilization on its
dimer interface, giving rise to independent behavior upon ligand
binding. The difference EEN maps showed considerable interaction changes
are located at heme surrounding, including the intra-helix of F$\alpha$ helix,
the FG loop and the dimer interface. It indicated the signaling
regulation of FixL is not responsible by individual residue but by a
synergetic reorganization of multiple conserved residues.


## INTRODUCTION

*Bradyrhizobium japonicum* lives symbiotically with leguminous plants in
root nodules, where they fix nitrogen gas from the atmosphere into
nitrogenous fertilizer for the plants under hypoxic conditions. Its
FixL/FixJ two-component system (TCS) is responsible for sensing diatomic
gas molecules (such as O~2~, CO, and NO) and regulates the expression of
the genes related to nitrogen fixation.[@zschiedrich2016] The FixL protein of
*Bradyrhizobium japonicum* (*Bj*FixL) is comprised of two distinct
domains: a tandem Per-Arnt-Sim (**PAS**) domain consisting of PAS-A and
PAS-B (***Bj*FixLH**); and a histidine kinase (**HK**) domain
controlling autophosphorylation and phosphotransferase. *Bj*FixLH senses
the gaseous diatomic molecules through a heme *b* cofactor, whose one
side of the axial ligand coordinated with the side chain of amino acid
HIS200 of *Bj*FixLH protein and the other axial position coordinated
with/without gas diatomic molecules.[@gilles-gonzalez1994;@gao2009;@taylor1999;@semenza2003;@chan2001;@henry2011] When the heme iron is at its
unliganded ferrous/ferric metal state, its conjugated HK domain will be
activated and undergo autophosphorylation and phosphotransferase, while
binding of strong-field ligands (O~2~, CO, NO, cyanide, imidazole, etc.)
will inactivate HK domain and impede the expression of nitrogen
fixation.[@chan2001;@rodgers2005;@gong1998]

Several hypotheses on the signaling mechanism of the PAS-B domain upon
ligand binding have been proposed: *spin-state,*[@gilles-gonzälez1995;@bertolucci1996;@honorio-felício2016] *ligand-induced
conformational changes*,[@taylor1999;@ayers2008;@rodgers1996;@shiro2002;@hiruma2007]] *redox potential of heme,*[@honorio-felício2016] and
*affinity (pKa).*[@winkler1996] For the *spin-state* *hypothesis*, it has been
reported that all the high-spin forms (*Bj*FixL, met-*Bj*FixL and
F^-^-*Bj*FixL) are active while all the low-spin forms (O~2~-*Bj*FixL,
NO-*Bj*FixL, CO-*Bj*FixL, imidazole-*Bj*FixL and CN^-^-*Bj*FixL) are
inactive.[@gilles-gonzälez1995;@tuckerman2002] However, the degree of inhibition strongly depends on
the type of ligand, i.e. not fully inhibited (CO and NO) and fully
inhibited (oxygen, imidazole and cyano),[@tuckerman2002] indicating the limitation
of the *spin-state hypothesis* for the comprehensive explanation of the
signaling mechanism. Currently, the *ligand-induced conformational
changes* mechanism is generally accepted to switch kinase activity
on/off by long-range effect of ligand binding.[@shimizu2015] Based on the crystal
structural analysis, the averaged positional differences with
met-*Bj*FixL in the FG loop are measured as 0.1, 0.9, 1.4, 1.7 Å in NO,
CN^-^, imidazole, and oxygen binding forms of *Bj*FixLs,
respectively.[@gong2000] A distal ARG220 has a special selectivity on oxygen
with an orientation change breaking its hydrogen bond with heme
propionate side chain 7 to form a new one with oxygen to stabilize the
oxygen molecule.[@jasaitis2006;@dunham2003;@balland2006] ARG206 has a common positive influence on
different ligands binding during signal transduction through
interactions with the heme edge.[@gong2000;@gilles-gonzalez2006;@gong1998] ARG208, ILE209 and ILE 210 of
*Rhizobium meliloti* (*Rm*FixL) corresponding to residue 214-216 of the
FG loop in *Bj*FixL, regulate the activity of the HK domain through
their interactions with O~2~.[@miyatake2000;@mukai2000] Crystallographic data analysis and
mutagenesis experiments have suggested that the rearrangement of the
hydrogen bonding and salt bridges between the heme propionates and the
FG loop upon ligands binding might be responsible for FixL allosteric
transition.

Unlike other membrane-embedded histidine kinases,[@taylor1999;@salvi2017;@shiro2002] *Bj*FixL is a
water-soluble sensor and forms a homodimer in the
cytoplasm.[@möglich2009;@miyatake2000;@möglich2009;@wright2018] The sensory domain of *Bj*FixLs forms inner and
outer surfaces after folding, where the inner surface binds to a heme
*b* cofactor and the outer surface makes contacts with the opposing
monomer and the flanking J$\alpha$ helix to form a homodimer.[@bhate2015] The dimer
interface in FixLH homodimer is continuous and highly connected,
comprising of $\alpha$'$\alpha$, A$\alpha$, B$\alpha$ helices, G$\beta$, H$\beta$, I$\beta$ strands and the J$\alpha$
helix.[@ayers2008] Mutation experiments[@jasaitis2006;@dunham2003;@balland2006;@gilles-gonzalez2006;@miyatake2000;@mukai2000;@yamawaki2016;@tanaka2006] pointed out that
multiple residues surrounding the heme core and on the dimer interface
may play a key role in the signal transmission event according to the
decrease of activity in the HK domain at different extents. The
functional roles of the dimer interface in other heme proteins have been
investigated for signal transduction and modulation,[@ayers2008;@diensthuber2013] facilitating
the cooperative binding of oxygens in HbI[@leitner2020]or controlling the
enzymatic activity.[@skalova2020] The importance of the potential dimer interface
was highlighted by studies of the monomeric form of *Bj*FixLHs.[@ota2019] As
pointed out by a previous study, there are no direct interactions
between the PAS-B domain and HK domain in *Bj*FixL but a coiled-coil
linker (J$\alpha$ helix) connecting them and the reduction of HK domain
activity in met-*Bj*FixL by residues mutagenesis of J$\alpha$ helix suggested
the J$\alpha$ helix could be a potential signal transmission gate from PAS-B
domain to the HK domain.[@wright2018] However, the precise roles of the dimer
interface and the coiled-coil linker region between the PAS-B domain and
HK domain have not been detailed yet, due to the lack of structural
information at the atomic level for the *Bj*FixL dimer so far (Figure
1). There remain questions about the role of the dimer interface and
coiled-coil linker J$\alpha$ helix in the signal transduction mechanism from
the heme-bound PAS domain to the HK domain.

The dynamics and changes in quaternary structures also play roles in the
signaling mechanism of the PAS sensor domain[@ayers2008;@yamawaki2021] Considering the
ubiquitous thermal vibrations and conformational fluctuations in
biomolecules under physiological conditions[@mizuno2020;@yamashita2018] ceaseless energy
exchange among amino acid residues occurs through interaction between
them. It has been demonstrated the analysis of energy flow across
non-bonded native contacts in proteins provides a useful tool for
characterizing the network of residue-residue interactions.[@leitner2020;@ishikura2015;@leitner2009;@leitner2020a;@leitner2008;@reid2020;@leitner2019;@ishikura2006;@poudel2021;@reid2018;@ota2019]
To illustrate such transport property of local energy flow, we
quantified a measure of the efficiency of local energy transport,
denoted hereafter as *G*, in terms of the autocorrelation function of
energy flow. The concept of *G* was introduced as an analogy with the
diffusion constant, *D*, which is expressed in terms of the velocity
autocorrelation function. Importantly, this method can illustrate both
static and dynamic effects on biomolecular functions. In fact, recent
studies[@leitner2020;@ota2019;@ishikura2015;@leitner2020a;@leitner2008;@reid2020;@leitner2019;@ishikura2006;@reid2018;@poudel2020] have demonstrated that *G* serves as a
good measure of vibrational energy transfer rate across native contacts.
In addition, we observed a scaling relationship between the rate and the
inversed value of the variance in the distance between hydrogen-bonded
contacts, while the rate is found to scale as a power low in the
distance between charged groups.[@reid2018]

In this study, we analyzed the energy flow in the active form
(met-*Bj*FixL) and the inactive form (met-*Bj*FixL-IMD) based on the
equilibrium molecular dynamics (MD) simulations using the X-ray
crystallographic structure of the *Bj*FixL dimer. The pattern of energy
flow was illustrated with a network graph based on the local energy flow
coefficient, *G*, for both forms of *Bj*FixL, and the effect of ligand
binding was investigated with special attention to the dimer interface.
Before we analyze the interaction network of native contacts between
amino acid residues, we performed the calculations in three stages: (1)
MD simulations to obtain the equilibrium conformational ensemble of each
state of dimeric *Bj*FixL protein, (2) calculations of the time series
of the energy flow between native contacts in the protein, and (3) the
mobility of energy flow was quantified for each contact. We used our
original computer program, CURP (CURrent calculation for
Proteins, [https://curp.jp](https://curp.jp)),[@ishikura2012;@leitner2009;@yamato2022] for the second and third stages. Finally, our results are discussed in the context of experimental studies in the literatures.

## COMPUTATIONAL METHODS

The computational procedures are summarized in Figure 2.

### Protein Structures.
We constructed two models of ferric FixLH
dimer, (1) the ligand-free state (met-FixLH) and (2) the imidazole-bound
state (met-FixLH-imd), based on the X-ray crystallographic structure of
FixL dimer. It is known that the deletion of the transmembrane region
from *Rm*FixL, which corresponds to the PAS-A domain of *Bj*FixL, gives
rise to no significant defect in the signaling functions.[@shiro2002]
Besides,
the A'$\alpha$ and J$\alpha$ helices are involved in the formation of the dimer
interface, and considering the potential influence of the FixLHs dimer
interface on the signaling process, 142 residues from E128 to L269 are
considered in the subsequent MD simulations.

### Parameterization of the Fe^3+^ Metal Cofactor.
The force-field parameters of the non-standard part of dimeric FixLHs were
generated using MCPB.py module[@li2016;@li2017] in AmberTools 15. A small
model and a large model of two dimeric FixLH proteins generated from
MCPB.py (Figure S1: met-FixLH, Figure S2: met-FixLH-imd) were used to
obtain the Fe^3+^ metal associated bond and angle parameters and
generate the atomic partial charges for the metal site, respectively.
The small model consists of heme, the coordinated sidechains of the
proximal H200 with/without ligand. In the large model, the coordinated
sidechain has its free N- and C- termini capped with N-methyl (NME) and
acetyl groups (ACE) to mimic the protein backbone. Optimization and
force constant calculations for the small model and the Merz-Kollman
RESP charge calculations for the large model were performed using
Gaussian 16 package with the B3LYP/6-31G(d) level of
theory[@goerigk2011;@sousa2007a] and the ultrafine grid. Fe^3+^ with spin state S=5/2 and
S=1/2[@edler2014] were used in Gaussian calculations for met-FixLH and
met-FixLH-imd protein, respectively (Table S1). The optimized geometry,
the atom types, partial charges for the RESP fittings and force field
parameters of the metal site generated from MCPB.py are shown in
Supporting Information (SI).

### MD Simulations
For both protein structures, the N- and C-
termini were capped with uncharged ACE (acetyl) and NME (N-methylamine)
groups, respectively. For both systems, we modeled the histidines H235
and H259 (H144, H150, H162, H200, H214) as neutral forms with each
epsilon (delta) nitrogen protonated. All other residues were considered
in their standard protonation state at pH = 7.0. The systems were
solvated with the TIP3P[@price2004] water molecules in a periodic cubic box, and
sodium ions were used to neutralize the systems, then, additional Na
and Cl ions were added to achieve a salt concentration of \~ 0.15 M.
Each solvated system contains about \~ 60, 000 atoms.

All molecular simulations were performed by Amber 14. The Amber
ff14SB force field[@maier2015] was used to model the standard residues of the
proteins except for H200, tuned force field from quantum calculations at
section *2.2 Parameterization of the Fe^3+^ Metal Cofactor* was used to
model the heme, ligands, and H200. The long-range electrostatic
interactions were treated with the particle mesh Ewald method[@essmann1995] and
nonbonded particle-particle interactions[@duan2001] were considered using a 9.0
Å cutoff. The time step for all MD simulations was set as 2.0 fs and
SHAKE was used to constrain hydrogens for product run MD simulations. To
prevent the dissociation of A'$\alpha$ helices, a harmonic restraint with a
spring force of 10 kcal/mol·Å^2^ was applied on the bond between two CA
atoms of residue I128 of chain A and chain B. After minimization,
heating, and equilibration of the systems (SI Appendix has a full
description of the procedures of this section), 20 independent *NPT* MD
simulations were performed for 55 ns at conditions of *T* = 300 K and
*P* = 0.978 atm, to conduct the conformational samplings. From the last
5-ns trajectory of each *NPT* simulation, 10 snapshots with their atomic
coordinates and velocity information were saved every 0.5 ns, from each
of which we conducted 200 sets of independent 1-ns constant volume,
constant energy (*NVE*) MD simulations. The atomic coordinates and
velocities of *NVE* MD simulations were saved every 10 fs for the
further calculations of energy flow and energy conductivity of native
contacts.

### Analysis of Energy Flow
We evaluated a measure of energy
transport, denoted by *G*, between each pair of residues in native
contact[@yamashita2018] using the *CURrent calculations in Proteins* (CURP) program
developed by our lab (<https://curp.jp/>).[@ishikura2012;@leitner2009;@yamato2022]
The derivation
process of *G* is as follows. The energy flow between two atoms can be
described using the equation:
$J_{i \leftarrow j}^{k}(t) = \frac{1}{2}\left( v_{i} \bullet F_{ij} - v_{j} \bullet F_{ji} \right)$,
where *k* (= 1, 2, 3, ..., 200) is used to mark different trajectories
from *NVE* simulations; $J_{i \leftarrow j}^{k}$ is the inter-atom
energy flow between atom *i* and atom *j* for trajectory *k*; $v_{i}$
and $v_{j}$ are the velocities of atom *i* and atom *j*, respectively;
$F_{ij}$($F_{ji})$ is the force from atom *j*(*i*) to atom *i*(*j*).
Then, the inter-residue energy flow can be calculated by:
$J_{A \leftarrow B}^{k}(t) = \sum_{i \in A}^{N_{A}}{\sum_{i \in B}^{N_{B}}{J_{i \leftarrow j}^{k}(t)}}$,
where *N* is the total number of side-chain atoms in residue A or B;
atoms *i* and *j* belong to the side chain of residue A and B,
respectively. To calculate *G*, the equation of
$G_{AB}^{k} = \lim_{\tau \rightarrow \infty}{\int_{0}^{\tau}{< J_{A \leftarrow B}^{k}(0)J_{A \leftarrow B}^{k}(t) > dt}}$
was used.[@ota2019;@ishikura2015;@leitner2009]
Finally, the values of *G* were averaged,
$G_{AB} = \frac{1}{N_{traj}}\sum_{k = 1}^{N_{traj}}G_{AB}^{k}$, where
*N*~traj~ = 200.[@ota2019;@leitner2009;@leitner2020a]
In this study, the $\tau$ was set as 50ps. We only
considered the sidechain pairs whose shortest interatomic distance is
within 6 Å because energy transport becomes negligible for the pairs
separated father than this threshold.

## RESULTS AND DISSCUSSION 

### Effects of Ligand Binding and Dimerization
For the energy flow
analysis of met-FixLH and met-FixLH-imd models by using the CURP
program, we considered 3485 and 4069 residue pairs, respectively, in
native contacts whose nearest interatomic distances are less than 6 Å
(Figure 3). Overall, the heatmap of *G*, which appear in the lower left
(chain A) and upper right (chain B), are similar to each other. To more
quantitatively evaluate the degree of similarity between the monomers,
we conducted linear regression analysis and examined the correlation of
*G*-values for the corresponding residue pairs between chain A and B
(Figure S4). As a result, the correlation coefficients are 0.9998 (R^2^
= 0.997) and 0.9823 (R^2^ = 0.984) for met-FixLH and met-FixLH-imd,
respectively. This observation indicates that chain A and B of
met-FixLH-imd behave slightly more independently than met-FixLH, in line
with the ligand-induced asymmetry found in the other histidine sensor
kinase family.[@neiditch2006] In the previous study, we investigated the effect of
ligand binding on the reside interactions of the PAS-B domain of FixL
based on the MD simulation of the monomeric unit.[@ota2019] Regarding ligand
binding to FixL, it should be noted there is no cooperativity observed
between the monomers.[@reid2020] The correlation coefficient of *G*-values
between the chain A of met-FixLH (this study) and the deoxy FixLH[@ota2019]is 0.9843 (R^2^ = 0.994), which is slightly smaller than that for the
met-FixLH dimer, indicating that the interactions across the dimer
interface enhance the synchronization between the monomers, although the
essential feature of the sensory domain is determined by the monomeric
structure itself.

The network pattern of *G*, illustrated in Figure S5, shows the hotspots
where busy traffic of energy flow occurs: two heme-cores and the dimer
interface. This reflects that the heme core as the active center of the
FixLH protein has a dense network framework base for the signaling
transduction to the downstream functional domain. The same feature of
intensive energy exchange on the dimer interface reflects the stable
connection of two monomers which is consistent with its low
dimer-monomer dissociation equilibrium constant and the continuousness
feature of FixLH[@ayers2008]. Also, the strong interactions on the dimer
interface imply its potential functional contributions to signaling
transduction as a bridge between the heme core and HK domain.

### Vibrational energy transfer pathways and residue interaction
network
Important pathways with busy energy traffic are highlighted
in Figure 4 and also listed in Table S2 (met-FixLH) and Table S3
(met-FixLH-imd). The strong interactions are mainly on the dimer
interface and surrounding the heme core, where the EF loop, F$\alpha$, FG loop,
G$\beta$, and H$\beta$ form a shell to wrap the heme and its ligand around.

In addition to the dimer interface, we found busy traffic of vibrational
energy transfer in two regions: (1) residue groups in direct contact
with heme, and (2) those having no direct contact with heme. **Region
(1),** highlighted with stick model, of met-FixLH and met-FixLH-imd is
consisted of MET192 (EF loop), HIS200(F$\alpha$), TYR203(F$\alpha$), ARG206(F$\alpha$),
HIS214(FG loop), ARG220(G$\beta$), VAL-222(G$\beta$), and ILE238(H$\beta$), shown in
Figure 4A(2) and ASP196(F$\alpha$), ARG199(F$\alpha$), HIS200(F$\alpha$), TYR203(F$\alpha$),
ARG206(F$\alpha$), ASP212(FG loop), ARG220(G$\beta$), LEU236(H$\beta$), shown in Figure
4B(2), respectively. Residues HIS200, TYR203, and ARG206 of F$\alpha$ helix are
found to have strong interactions with heme both in met-FixLH and
met-FixLH-imd. The strong interaction between HIS200 and heme is due to
the Fe-N coordination bonding. The proximal ARG206 was regarded as an
important residue ﻿strongly influencing affinity and regulation through
interaction with HIS214 of the FG loop in the *Bj*FixL active state of
the heme propionate 6 in its inactive state.[@gong2000;@dunham2003;@gilles-gonzalez2006;@tanaka2006;@2008]
Few studies investigated the role of TYR203 in the signaling process, but its
potential role was mentioned in the structural analysis due to the
relative close position with heme same like ARG206.[@perutz1999] HIS214 in
met-FixLH and ASP212 in met-FixLH-imd of FG loop are found to have
strong contacts with heme. HIS214 forms a hydrogen bond with heme-
propionate 7,[@balland2006] together with ARG206 to form a stable triangular
interaction in met-FixLH. ASP212 forms a salt bridge with ARG206,[@dunham2003]
together with heme to form another stable triangular interaction in
met-FixLH-imd. A distal ARG220 was found to have strong interaction with
heme (and imidazole) both in met-FixLH and met-FixLH-imd. In ferrous
*Bj*FixLH protein, the guanidinium group of ARG220 has a special
selectivity on oxygen with an orientation change breaking its hydrogen
with heme propionate 7 to form a new one with oxygen to stabilize the
oxygen molecule.[@shimizu2015;@balland2006;@tanaka2006;@2008;@key2005;@buhrke2020]

**Region (2)** of residues having no direct contact with heme is also
recognized. TYR207 and GLU240 form a hydrogen bonding in the crystal
structure and its strength varies between oxy and deoxy forms of
*Sm*FixL.[@yano2013]
A stable triangle is formed among ARG-208(F$\alpha$), HIS162(B$\beta$),
and GLU-246(I$\beta$). It is noteworthy that a vibrational energy transfer
pathway in met-FixLH (Figure 4A) is spanned all the way from G$\beta$ (VAL222)
to the junction between the PAS core and the J$\alpha$ helix via H$\beta$ (MET234,
HIS235), I$\beta$ (VAL253, ARG254), and the highly conserved DxT motif,[@möglich2009a]
(ASP-LEU-THR). It has been suggested that the hydrophobic residue,
ILE215, VAL222, MET234, LEU236, ILE238, and VAL253 form a signal
transduction pathway from heme to the J$\alpha$ helix. In fact, these
hydrophobic residues have been found not only in *Bj*FixL but also in
the equivalent sites of the other PAS domains.[@perutz1999;@bashford1987] In contrast, we
cannot recognize such a pathway for met-FixLH-imd (Figure 4B). Although
the structural change between met-FixLH and met-FixLH-imd is not so
large, the vibrational energy transfer pathways are markedly different
between them. Only heme-ARG220 interaction is common between met-FixLH
and met-FixLH-imd. The heme-protein interactions are almost completely
localized in the F$\alpha$ helix and the FG loop.

Strong interactions across the dimer interface are mainly found in two
regions: (3) N terminus and (4) C terminus.

**Region (3),** highlighted with stick models (Figure 4A(3) and B(3)),
includes charged residue pairs with ARG139, ARG141, and ARG146, for
met-FixLH and met-FixLH-imd, respectively. It should be noted that this
region is close to neither PAS core nor heme. To save computational
time, we imposed harmonic restraints on each C$\alpha$ atom of ILE128 of chains
A and B, and neglected PAS-A domains in the calculations. Without such
restraints, the pair of A'$\alpha$ helices undergo considerable fluctuations
(Figure S3). Although the role of the *Bj*FixL PAS-A domain remains
unclear,[@wright2018] a possible role, speculated from the study of *Sm*FixL,[@yamawaki2021]
may be stabilization of the dimer interface of *Bj*FixL.

In **Region (4),** located in the coiled-coil linker, we recognize four
residue-residue interactions among (2 × 2 =) 4 charged residues, ASP154
and ARG254 of chain A and B (Figure 4A(4) and B(4)). On the downstream
of this region, we also recognized a densely connected intra-monomer
network of vibrational energy transfer pathways with ASP255, THR257,
GLU258, GLN261, THR262, ARG265 GLN267 and GLU268 (Table S2), in line
with the site-directed mutagenesis on the coiled-coil linker that
exhibited marked decrease of the kinase activity of *Bj*FixL.[@wright2018]

### Reorganization of vibrational energy transfer pathways upon ligand binding

Superposition of the x-ray crystallographic structures of met-FixLH and
met-FixLH-imd (Figure 5B) shows a movement of the FG loop, with an
average positional displacement of 1.4 Å,[@gong2000] together with a slight
movement of the G$\beta$ strand and the reorientation of heme propionate 6 and
7 side chains. We speculate that this structural change induced the
reorganization of the vibrational energy transfer network between heme
and the FG loop or G$\beta$ strand, leading to the modulation of signal
transmission to the downstream of PAS-B domain. To evaluate the effect
of ligand binding quantitatively, we calculated the difference (Δ*G*)
and the relative difference (rΔ*G*) of the *G*-values for residue pairs
in native contact between met-FixLH (*G*~met~) and met-FixLH-imd
(*G*~imd~), where Δ*G* = *G*~imd~ -- *G*~met~ and rΔ*G* = Δ*G* /
*G*~met~. In Figure 5A, we illustrated the reorganization of the network
of vibrational energy transfer pathways (see also Table S4), where those
with increased *G*, shown in red, are distinguished from those with
decreased *G*, shown in blue. Ligand binding to the heme weakened
(enhanced) the interaction between heme with HIS214 (HIS200, TYR203,
ARG206, and ARG220). The intrahelical interactions within F$\alpha$ were
decreased, while those between the F$\alpha$ helix and the nearby secondary
structural units, such as ARG208-GLU246, ARG206-ASP212, TYR207-GLU240,
ASN189-HIS200, and ARG197-LYS225, were increased. Across the dimer
interface, we recognized that the ligand binding induced considerable
weakening of the monomer-monomer interactions involving charged residues
ASP154, GLU135/142, ARG139/141/146/174 (ARG254) in the N(C)-terminus of
the PAS-B domain. In addition, two residue pairs on the dimer interface,
ASP154-ARG254 and THR262-ARG265, exhibit increased *G*-values by ligand
binding, where the latter of which belongs to the coiled-coil linker. In
summary, ligand binding enhanced the interactions between F$\alpha$ and heme or
the terminal regions of G/H/I $\beta$ strands, while it weakened those within
the F$\alpha$ helix, $\beta$ sheet, and those across the dimer interface. These
observations suggest that the signal transmission from the heme core to
the coiled-coil linker may be mainly blocked at the bridge of G/H/I
$\beta$-strands, together with the synergetic reorganization of the compact
networks constructed by multiple highly conserved amino acid residues.

## Summary 

The effects of imidazole binding and dimerization on an oxygen sensor
protein, *Bj*FixLH, were investigated by theoretical computations with
the theory of energy flow and conductivity. Using the energy exchange
network (EEN) model, the residue-residue and protein-protein
interactions of dimeric FixL protein are described. A vibrational energy
transfer pathway characterized in the active form of *Bj*FixLH protein,
could be a possible signaling pathway. Upon imidazole bound with heme,
the allosteric effect induced from heme core is propagated starting from
the FG loop, through G/H/I $\beta$ strands bridge and coiled-coil linker
region, to the kinase domain. The salt bridge, constructed by four
charged residues (ASP154 and ARG254) and the DxT motif, might be as a
gate controlling the signaling from PAS-B domain to a residue cluster of
coiled-coil linker region with a compact local interaction network. A
local residue cluster with compact interaction network is identified to
be the signal transmitter connecting the PAS-B domain and HK domain to
stimulus autophosphorylation. The interactions across the dimer
interface plays a role in dimerization stabilization and the ligand
binding effect will destabilize the dimer interface giving rise to a
more independent behavior than before. Although the structural change
between two states is very small, through the interaction changes in
native contacts between the active form (met-*Bj*FixLH dimer) and
(met-FixLH-imd dimer), the significant changes in inter-residue
interactions are characterized by the energy exchange network. The
strengthened interactions between heme and F$\alpha$ helix while the weakened
interactions between heme-7 propionate -HIS214 and within G/H/I $\beta$
antiparallel strands upon imidazole binding, indicates the signal
regulation process is responsible by a synergetic effect of
rearrangement of the compact interactions network constructed by
multiple reserved residues, rather than by individual residue.

The successful application of the energy exchange network model in the
identification of functional residue network and protein-protein
interactions shows the promising value in the area of solving the
problem in biomolecules integrating with static structural information.
This also highlighted the importance of dynamic behavior on biomolecular
functions in uncovering the biomolecules functions.

<!-- ## ACKNOWLEDGMENTS 

This work has been supported by Iketani Science and Technology
Foundation (Grant# 0331122-A) for TY, and JST SPRING, Interdisciplinary
Frontier Next-Generation Researcher Program of the Tokai Higher
Education and Research System (Grant# JPMJSP2125) for TW. Tingting WANG
would like to take this opportunity to thank the "Interdisciplinary
Frontier Next-Generation Researcher Program of the Tokai Higher
Education and Research System." Computations were performed using
supercomputers provided by RCCS, Okazaki, Japan (Project: 22-IMS-C987);
Fugaku, by RIKEN through the "HPCI System Research Project (Project ID:
hp200241)"; Flow, by Nagoya University through the "High Performance
Computing Research Project for Joint Computational Science"; and
Ohtaka/Enaga, by ISSP, University of Tokyo. -->

## REFERENCES 
<!-- 
\(1\) Zschiedrich, C. P., Keidel, V., and Szurmant, H. (2016) Molecular
Mechanisms of Two-Component Signal Transduction. *J Mol Biol* *428*,
3752--3775.

\(2\) Gilles-Gonzalez, M. A., Gonzalez, G., Perutz, M. F., Kiger, L.,
Marden, M. C., and Poyart, C. (1994) Heme-Based Sensors, Exemplified by
the Kinase FixL, Are a New Class of Heme Protein with Distinctive Ligand
Binding and Autoxidation. *Biochemistry* *33*, 8067--8073.

\(3\) Gao, R., and Stock, A. M. (2009) Biological insights from
structures of two-component proteins. *Annu Rev Microbiol* *63*,
133--154.

\(4\) Taylor, B. L., and Zhulin, I. B. (1999) PAS Domains: Internal
Sensors of Oxygen, Redox Potential, and Light. *Microbiology and
Molecular Biology Reviews* *63*, 479--506.

\(5\) Lahiri; Sukhamay.; Gregg L. Semenza; and Nanduri R. Prabhakar.
(2003) Oxygen sensing : responses and adaptation to hypoxia. New York:
Marcel Dekker.

\(6\) Chan, M. K. (2001) Recent advances in heme-protein sensors. *Curr
Opin Chem Biol* *5*, 216--222.

\(7\) Henry, J. T., and Crosson, S. (2011) Ligand-Binding PAS Domains in
a Genomic, Cellular, and Structural Context. *Annu Rev Microbiol* *65*,
261--286.

\(8\) Rodgers, K. R., and Lukat-Rodgers, G. S. (2005) Insights into
heme-based O2 sensing from structure-function relationships in the FixL
proteins. *J Inorg Biochem* *99*, 963--977.

\(9\) Gong, W., Hao, B., Mansy, S. S., Gonzalez, G., Gilles-Gonzalez, M.
A., and Chan, M. K. (1998) Structure of a biological oxygen sensor: A
new mechanism for heme-driven signal transduction. *Proc Natl Acad Sci U
S A* *95*, 15177--15182.

\(10\) Gilles-Gonzälez, M. A., Gonzalez, G., and Perutz, M. F. (1995)
Kinase Activity of Oxygen Sensor FixL Depends on the Spin State of its
Heme Iron. *Biochemistry* *34*, 232--236.

\(11\) Bertolucci, C., Ming, L., Gonzalez, G., and Gilles-Gonzalez, M.
A. (1996) Assignment of the hyperfine-shifted 1H-NMR signals of the heme
in the oxygen sensor FixL from Rhizobium meliloti. *Chem Biol* *3*,
561--566.

\(12\) Honorio-Felício, N., Carepo, M. S. P., de F. Paulo, T., de França
Lopes, L. G., Sousa, E. H. S., Diógenes, I. C. N., and Bernhardt, P. v.
(2016) The Heme-Based Oxygen Sensor Rhizobium etli FixL: Influence of
Auxiliary Ligands on Heme Redox Potential and Implications on the Enzyme
Activity. *J Inorg Biochem* *164*, 34--41.

\(13\) Ayers, R. A., and Moffat, K. (2008) Changes in quaternary
structure in the signaling mechanisms of PAS domains. *Biochemistry*
*47*, 12078--12086.

\(14\) Rodgers, K. R., Lukat-Rodgers, G. S., and Barron, J. A. (1996)
Structural basis for ligand discrimination and response initiation in
the heme-based oxygen sensor FixL. *Biochemistry* *35*, 9539--9548.

\(15\) Shiro, Y., and Nakamura, H. (2002) Heme-based oxygen sensor
protein FixL: Its structure and function. *Int Congr Ser* *1233*,
251--257.

\(16\) Hiruma, Y., Kikuchi, A., Tanaka, A., Shiro, Y., and Mizutani, Y.
(2007) Resonance Raman observation of the structural dynamics of FixL on
signal transduction and ligand discrimination. *Biochemistry* *46*,
6086--6096.

\(17\) Winkler, W. C., Gonzalez, G., Wittenberg, J. B., Hille, R.,
Dakappagari, N., Jacob, A., Gonzalez, L. A., and Gilles-Gonzalez, M. A.
(1996) Nonsteric factors dominate binding of nitric oxide, azide,
imidazole, cyanide, and fluoride to the rhizobial heme-based oxygen
sensor FixL. *Chem Biol* *3*, 841--850.

\(18\) Tuckerman, J. R., Gonzalez, G., Dioum, E. M., and
Gilles-Gonzalez, M. A. (2002) Ligand and oxidation-state specific
regulation of the heme-based oxygen sensor FixL from Sinorhizobium
meliloti. *Biochemistry* *41*, 6170--6177.

\(19\) Shimizu, T., Huang, D., Yan, F., Stranava, M., Bartosova, M.,
Fojtíková, V., and Martínková, M. (2015) Gaseous O2, NO, and CO in
Signal Transduction: Structure and Function Relationships of Heme-Based
Gas Sensors and Heme-Redox Sensors. *Chem Rev* *115*, 6491--6533.

\(20\) Gong, W., Hao, B., and Chan, M. K. (2000) New mechanistic
insights from structural studies of the oxygen-sensing domain of
Bradyrhizobium japonicum FixL. *Biochemistry* *39*, 3955--3962.

\(21\) Jasaitis, A., Hola, K., Bouzhir-Sima, L., Lambry, J. C., Balland,
V., Vos, M. H., and Liebl, U. (2006) Role of distal arginine in early
sensing intermediates in the heme domain of the oxygen sensor FixL.
*Biochemistry* *45*, 6018--6026.

\(22\) Dunham, C. M., Dioum, E. M., Tuckerman, J. R., Gonzalez, G.,
Scott, W. G., and Gilles-Gonzalez, M. A. (2003) A distal arginine in
oxygen-sensing heme-PAS domains is essential to ligand binding, signal
transduction, and structure. *Biochemistry* *42*, 7701--7708.

\(23\) Balland, V., Bouzhir-Sima, L., Anxolabéhère-Mallart, E., Boussac,
A., Vos, M. H., Liebl, U., and Mattioli, T. A. (2006) Functional
implications of the propionate 7-arginine 220 interaction in the FixLH
oxygen sensor from Bradyrhizobium japonicum. *Biochemistry* *45*,
2072--2084.

\(24\) Gilles-Gonzalez, M. A., Caceres, A. I., Sousa, E. H. S.,
Tomchick, D. R., Brautigam, C., Gonzalez, C., and Machius, M. (2006) A
Proximal Arginine R206 Participates in Switching of the Bradyrhizobium
japonicum FixL Oxygen Sensor. *J Mol Biol* *360*, 80--89.

\(25\) Gong, W., Hao, B., Mansy, S. S., Gonzalez, G., Gilles-Gonzalez,
M. A., and Chan, M. K. (1998) Structure of a biological oxygen sensor: A
new mechanism for heme-driven signal transduction. *Proc Natl Acad Sci U
S A* *95*, 15177--15182.

\(26\) Miyatake, H., Mukai, M., Park, S. Y., Adachi, S. I., Tamura, K.,
Nakamura, H., Nakamura, K., Tsuchiya, T., Iizuka, T., and Shiro, Y.
(2000) Sensory mechanism of oxygen sensor FixL from Rhizobium meliloti:
Crystallographic, mutagenesis and resonance Raman spectroscopic studies.
*J Mol Biol* *301*, 415--431.

\(27\) Mukai, M., Nakamura, K., Nakamura, H., Iizuka, T., and Shiro, Y.
(2000) Roles of Ile209 and Ile210 on the heme pocket structure and
regulation of histidine kinase activity of oxygen sensor FixL from
Rhizobium meliloti. *Biochemistry* *39*, 13810--13816.

\(28\) Salvi, M., Schomburg, B., Giller, K., Graf, S., Unden, G.,
Becker, S., Lange, A., and Griesinger, C. (2017) Sensory domain
contraction in histidine kinase CitA triggers transmembrane signaling in
the membrane-bound sensor. *Proc Natl Acad Sci U S A* *114*, 3115--3120.

\(29\) Shiro, Y., and Nakamura, H. (2002) Heme-based oxygen sensor
protein FixL: Its structure and function. *Int Congr Ser* *1233*,
251--257.

\(30\) Möglich, A., Ayers, R. A., and Moffat, K. (2009) Structure and
Signaling Mechanism of Per-ARNT-Sim Domains. *Structure* *17*,
1282--1294.

\(31\) Wright, G. S. A., Saeki, A., Hikima, T., Nishizono, Y., Hisano,
T., Kamaya, M., Nukina, K., Nishitani, H., Nakamura, H., Yamamoto, M.,
Antonyuk, S. v., Hasnain, S. S., Shiro, Y., and Sawai, H. (2018)
Architecture of the complete oxygen-sensing FixL-FixJ two-component
signal transduction system. *Sci Signal* *11*, 1--13.

\(32\) Bhate, M. A. P., Molnar, K. A. S., Goulian, M., and Degrado, W.
F. (2015) Signal Transduction in Histidine Kinases: Insights from New
Structures. *Structure* *23*, 981--994.

\(33\) Yamawaki, T., Ishikawa, H., Mizuno, M., Nakamura, H., Shiro, Y.,
and Mizutani, Y. (2016) Regulatory Implications of Structural Changes in
Tyr201 of the Oxygen Sensor Protein FixL. *Biochemistry* *55*,
4027--4035.

\(34\) Tanaka, A., Nakamura, H., Shiro, Y., and Fujii, H. (2006) Roles
of the heme distal residues of FixL in O2 sensing: A single convergent
structure of the heme moiety is relevant to the downregulation of kinase
activity. *Biochemistry* *45*, 2515--2523.

\(35\) Diensthuber, R. P., Bommer, M., Gleichmann, T., and Möglich, A.
(2013) Full-length structure of a sensor histidine kinase pinpoints
coaxial coiled coils as signal transducers and modulators. *Structure*
*21*, 1127--1136.

\(36\) Leitner, D. M., Hyeon, C., and Reid, K. M. (2020) Water-mediated
biomolecular dynamics and allostery. *Journal of Chemical Physics*
*152*.

\(37\) Skalova, T., Lengalova, A., Dohnalek, J., Harlos, K., Mihalcin,
P., Kolenko, P., Stranava, M., Blaha, J., Shimizu, T., and Martínková,
M. (2020) Disruption of the dimerization interface of the sensing domain
in the dimeric heme-based oxygen sensor AfGcHK abolishes bacterial
signal transduction. *Journal of Biological Chemistry* *295*,
1587--1597.

\(38\) Ota, K., and Yamato, T. (2019) Energy Exchange Network Model
Demonstrates Protein Allosteric Transition: An Application to an Oxygen
Sensor Protein. *Journal of Physical Chemistry B* *123*, 768--775.

\(39\) Yamawaki, T., Mizuno, M., Ishikawa, H., Takemura, K., Kitao, A.,
Shiro, Y., and Mizutani, Y. (2021) Regulatory Switching by Concerted
Motions on the Microsecond Time Scale of the Oxygen Sensor Protein FixL.
*J Phys Chem B* *125*, 6847--6856.

\(40\) Mizuno, M., and Mizutani, Y. (2020) Role of atomic contacts in
vibrational energy transfer in myoglobin. *Biophys Rev* *12*, 511--518.

\(41\) Yamashita, S., Mizuno, M., Tran, D. P., Dokainish, H., Kitao, A.,
and Mizutani, Y. (2018) Vibrational Energy Transfer from Heme through
Atomic Contacts in Proteins. *Journal of Physical Chemistry B* *122*,
5877--5884.

\(42\) Ishikura, T., Iwata, Y., Hatano, T., and Yamato, T. (2015) Energy
exchange network of inter-residue interactions within a thermally
fluctuating protein molecule: A computational study. *J Comput Chem*
*36*, 1709--1718.

\(43\) Leitner, D. M., Straub, J. E., and Group, F. (2009) Proteins
(Leitner, D. M., and Straub, J. E., Eds.). CRC Press.

\(44\) Leitner, D. M., and Yamato, T. (2020) Recent developments in the
computational study of protein structural and vibrational energy
dynamics. *Biophys Rev* *12*, 317--322.

\(45\) Leitner, D. M. (2008) Energy flow in proteins. *Annu Rev Phys
Chem* *59*, 233--259.

\(46\) Reid, K. M., Yamato, T., and Leitner, D. M. (2020) Variation of
Energy Transfer Rates across Protein-Water Contacts with Equilibrium
Structural Fluctuations of a Homodimeric Hemoglobin. *Journal of
Physical Chemistry B* *124*, 1148--1159.

\(47\) Leitner, D. M., Pandey, H. D., and Reid, K. M. (2019) Energy
Transport across Interfaces in Biomolecular Systems. *Journal of
Physical Chemistry B* *123*, 9507--9524.

\(48\) Ishikura, T., and Yamato, T. (2006) Energy transfer pathways
relevant for long-range intramolecular signaling of photosensory protein
revealed by microscopic energy conductivity analysis. *Chem Phys Lett*
*432*, 533--537.

\(49\) Poudel, H., and Leitner, D. M. (2021) Activation-Induced
Reorganization of Energy Transport Networks in the $\beta$-2Adrenergic
Receptor. *Journal of Physical Chemistry B* *125*, 6522--6531.

\(50\) Reid, K. M., Yamato, T., and Leitner, D. M. (2018) Scaling of
Rates of Vibrational Energy Transfer in Proteins with Equilibrium
Dynamics and Entropy. *Journal of Physical Chemistry B* *122*,
9331--9339.

\(51\) Ota, K., and Yamato, T. (2019) Energy Exchange Network Model
Demonstrates Protein Allosteric Transition: An Application to an Oxygen
Sensor Protein. *Journal of Physical Chemistry B* *123*, 768--775.

\(52\) Leitner, D. M. (2005) Heat Transport in Molecules and Reaction
Kinetics: The Role of Quantum Energy Flow and Localization. *Geometric
Structures of Phase Space in Multidimensional Chaos: Applications to
Chemical Reaction Dynamics in Complex Systems*.

\(53\) Poudel, H., Reid, K. M., Yamato, T., and Leitner, D. M. (2020)
Energy Transfer across Nonpolar and Polar Contacts in Proteins: Role of
Contact Fluctuations. *Journal of Physical Chemistry B* *124*,
9852--9861.

\(54\) Ishikura, T., Hatano, T., and Yamato, T. (2012) Atomic stress
tensor analysis of proteins. *Chem Phys Lett* *539--540*, 144--150.

\(55\) Leitner, D. M., and Yamato, T. (2018) MAPPING ENERGY TRANSPORT
NETWORKS IN PROTEINS, pp 63--113.

\(56\) Yamato, T., Wang, T., Sugiura, W., Laprévote, O., and Katagiri,
T. (2022) Computational Study on the Thermal Conductivity of a Protein.
*J Phys Chem B* *126*, 3029--3036.

\(57\) CURP (CURrent Calculations for Proteins) v1.3. *https://curp.
jp*.

\(58\) Li, P., and Merz, K. M. (2016) MCPB.py: A Python Based Metal
Center Parameter Builder. *J Chem Inf Model* *56*, 599--604.

\(59\) Li, P., and Merz, K. M. (2017) Metal Ion Modeling Using Classical
Mechanics. *Chem Rev* *117*, 1564--1686.

\(60\) D.A. Case, V. Babin, J.T. Berryman, R.M. Betz, Q. Cai, D.S.
Cerutti, T.E. Cheatham, III, T.A. Darden, R.E. Duke, H. Gohlke, A.W.
Goetz, S. Gusarov, N. Homeyer, P. Janowski, J. Kaus, I. Kolossváry, A.
Kovalenko, T.S. Lee, S. LeGrand, T. Luchko, R. Luo, B., X. W. P. A. K.
(2014) Amber14. University of California, San Francisco.

\(61\) Frisch, M. J.; Trucks, G. W.; Schlegel, H. B.; Scuseria, G. E.;
Robb, M. A.; Cheeseman, J. R.; Scalmani, G.; Barone, V.; Petersson, G.
A.; Nakatsuji, H.; Li, X.; Caricato, M.; Marenich, A. V.; Bloino, J.;
Janesko, B. G.; Gomperts, R.; Mennucci, B.; Hratch, D. J. Gaussian 16,
Revision C.01. Gaussian, Inc., Wallingford CT, 2016.

\(62\) Roy Dennington, Todd A. Keith, and John M. Millam, Semichem Inc.,
Shawnee Mission, K. (2016) GaussView, Version 6.1.

\(63\) Goerigk, L., and Grimme, S. (2011) A thorough benchmark of
density functional methods for general main group thermochemistry,
kinetics, and noncovalent interactions. *Physical Chemistry Chemical
Physics* *13*, 6670.

\(64\) Sousa, S. F., Fernandes, P. A., and Ramos, M. J. (2007) General
Performance of Density Functionals. *J Phys Chem A* *111*, 10439--10452.

\(65\) Edler, E., and Stein, M. (2014) Spin‐State‐Dependent Properties
of an Iron(III) Hydrogenase Mimic. *Eur J Inorg Chem* *2014*,
3587--3599.

\(66\) Price, D. J., and Brooks, C. L. (2004) A modified TIP3P water
potential for simulation with Ewald summation. *J Chem Phys* *121*,
10096--10103.

\(67\) Maier, J. A., Martinez, C., Kasavajhala, K., Wickstrom, L.,
Hauser, K. E., and Simmerling, C. (2015) ff14SB: Improving the Accuracy
of Protein Side Chain and Backbone Parameters from ff99SB. *J Chem
Theory Comput* *11*, 3696--3713.

\(68\) Essmann, U., Perera, L., Berkowitz, M. L., Darden, T., Lee, H.,
and Pedersen, L. G. (1995) A smooth particle mesh Ewald method. *J Chem
Phys* *103*, 8577--8593.

\(69\) Duan, Z.-H., and Krasny, R. (2001) An adaptive treecode for
computing nonbonded potential energy in classical molecular systems. *J
Comput Chem* *22*, 184--195.

\(70\) Neiditch, M. B., Federle, M. J., Pompeani, A. J., Kelly, R. C.,
Swem, D. L., Jeffrey, P. D., Bassler, B. L., and Hughson, F. M. (2006)
Ligand-Induced Asymmetry in Histidine Sensor Kinase Complex Regulates
Quorum Sensing. *Cell* *126*, 1095--1108.

\(71\) (2008) The Smallest Biomolecules: Diatomics and their
Interactions with Heme Proteins. Elsevier.

\(72\) Perutz, M. F., Paoli, M., and Lesk, A. M. (1999) Fix L, a
haemoglobin that acts as an oxygen sensor: Signalling mechanism and
structural basis of its homology with PAS domains. *Chem Biol*.

\(73\) Key, J., and Moffat, K. (2005) Crystal structures of deoxy and
CO-bound bjFixLH reveal details of ligand recognition and signaling.
*Biochemistry* *44*, 4627--4635.

\(74\) Buhrke, D., and Hildebrandt, P. (2020, April 8) Probing Structure
and Reaction Dynamics of Proteins Using Time-Resolved Resonance Raman
Spectroscopy. *Chem Rev*. American Chemical Society.

\(75\) Yano, S., Ishikawa, H., Mizuno, M., Nakamura, H., Shiro, Y., and
Mizutani, Y. (2013) Ultraviolet resonance raman observations of the
structural dynamics of rhizobial oxygen sensor FixL on ligand
recognition. *Journal of Physical Chemistry B* *117*, 15786--15791.

\(76\) Möglich, A., Ayers, R. A., and Moffat, K. (2009) Design and
Signaling Mechanism of Light-Regulated Histidine Kinases. *J Mol Biol*
*385*, 1433--1444.

\(77\) Bashford, D., Chothia, C., and Lesk, A. M. (1987) Determinants of
a protein fold. *J Mol Biol* *196*, 199--216.

  -->
