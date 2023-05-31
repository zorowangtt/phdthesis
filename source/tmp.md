
### Equilibrium MD Simulations

#### System setup for MD simulations
The thermal and energy transport properties of villin headpiece, HP36, were studied by MD simulations based on the nuclear magnetic resonance (NMR) structure (PDB code: 1VII) by using Amber package and AmberTools 19.
The protonation states of all ionizable residues were kept in their neutral solution states at pH = 7.
We used a small time step for MD simulations for generating time series of the heat current and energy flow.
Thus, we keep the system size as small as possible in this study.
After the protein molecule was solvated by a truncated octahedral box of TIP3P water molecules with 2 sodium and 4 chloride ions, the total number of molecules for the simulation box was 7589.
Amber ff19SB force field was used for protein molecule.
For efficient long-range electrostatic calculations, the particle mesh Ewald (PME) method was used under periodic boundary condition.


## COMPUTATIONAL METHODS

![Computational procedure.](figures/fixl/method.jpg){#fig:method width=100%}

The computational procedures are summarized in @fig:method.

### Protein Structures.
We constructed two models of ferric FixLH
dimer, (1) the ligand-free state (met-FixLH) and (2) the imidazole-bound
state (met-FixLH-imd), based on the X-ray crystallographic structure of
FixL dimer. It is known that the deletion of the transmembrane region
from *Rm*FixL, which corresponds to the PAS-A domain of *Bj*FixL, gives
rise to no significant defect in the signaling functions.[@shiro2002]
Besides,
the A'α and Jα helices are involved in the formation of the dimer
interface, and considering the potential influence of the FixLHs dimer
interface on the signaling process, 142 residues from E128 to L269 are
considered in the subsequent MD simulations.


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
proteins except for H200, tuned force field from quantum calculations at @sec:parameterization was used to
model the heme, ligands, and H200.

The long-range electrostatic
interactions were treated with the particle mesh Ewald method[@essmann1995] and
nonbonded particle-particle interactions[@duan2001] were considered using a 9.0
Å cutoff. The time step for all MD simulations was set as 2.0 fs and
SHAKE was used to constrain hydrogens for product run MD simulations. To
prevent the dissociation of A'α helices, a harmonic restraint with a
spring force of 10 kcal/mol·Å^2^ was applied on the bond between two CA
atoms of residue I128 of chain A and chain B.

 After minimization,
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
developed by our lab (<https://curp.jp>).[@ishikura2012;@leitner2009;@yamato2022]
The derivation
process of *G* is as follows. The energy flow between two atoms can be
described using the equation:

$$
\bm J_{i \leftarrow j}^{k}(t) = \frac{1}{2}( \bm v_{i} \cdot \bm F_{ij} - \bm v_{j} \cdot \bm F_{ji})
$$

where *k* (= 1, 2, 3, ..., 200) is used to mark different trajectories
from *NVE* simulations; $J_{i \leftarrow j}^{k}$ is the inter-atom
energy flow between atom *i* and atom *j* for trajectory *k*; $v_i$
and $\bm v_j$ are the velocities of atom *i* and atom *j*, respectively;
$\bm F_{ij}$($\bm F_{ji})$ is the force from atom *j*(*i*) to atom *i*(*j*).
Then, the inter-residue energy flow can be calculated by:

$$
\bm J_{A \leftarrow B}^{k}(t) = \sum_{i \in A}^{N_{A}}{\sum_{i\in B}^{N_{B}}{\bm J_{i \leftarrow j}^{k}(t)}}
$$

where *N* is the total number of side-chain atoms in residue A or B;
atoms *i* and *j* belong to the side chain of residue A and B,
respectively. To calculate *G*, the equation of was used[@ota2019;@ishikura2015;@leitner2009]


$$
G_{AB}^{k} = \lim_{\tau \rightarrow \infty} \int_{0}^{\tau} \langle \bm J_{A \leftarrow B}^{k}(0) \cdot \bm J_{A \leftarrow B}^{k}(t)  \rangle dt
$$

Finally, the values of *G* were averaged,

$$
G_{AB} = \frac{1}{N_{traj}}\sum_{k = 1}^{N_{traj}}G_{AB}^{k}
$$

where *N*~traj~ = 200.[@ota2019;@leitner2009;@leitner2020a]

In this study, the $\tau$ was set as 50ps. We only
considered the sidechain pairs whose shortest interatomic distance is
within 6 Å because energy transport becomes negligible for the pairs
separated father than this threshold.