\newpage
# Theory, Materials and Methods 

## THEORETICAL AND COMPUTATIONAL METHODS
### Thermal Conductivity and Inter-atomic Heat Current
In this section, we derived an atomistic expression of heat current and thermal conductivity for the molecular system.
Based on linear response theory, the thermal conductivity of material is expressed in terms of the time autocorrelation function (ACF) of the heat current vector, $\bm{h}$, as

$$
\lambda = \frac {1} {3Vk_BT^2} \bm{\int_0^\infty} \langle \bm{h}(t) \cdot \bm{h}(0) \rangle dt,
$$
{#eq:eq1}

where $\lambda$ is the thermal conductivity, $V$ is the volume, $k_B$ is the Boltzmann constant, $T$ is the absolute temperature, the angle brackets of $\langle \bm{h}(t) \cdot \bm{h}(0) \rangle$ denote ensemble average.[@mcquarrie2000]

In a molecular system, the atomistic representation of the instantaneous heat current, $\bm{h}$, is derived as the time derivative of energy distribution as[@yamato2022]

$$
  {\bm{h} }\equiv \frac{d}{dt} \bm{\sum}_{i=1}^N(E_i  \bm{\bm{r}_i})=\bm{\sum}_{i=1}^N { (E_i\frac{d\bm{r}_i}{dt} + \bm{r}_i} \frac{dE_i}{dt})
$$
{#eq:eq2}

where $E_i$, $\bm{r}_i$ are per atom energy and the position vector of atom $i$, and $N$ is the total number of atoms.

The first and the second terms of the right hand side of @eq:eq2 are called convective term and virial term, respectively.
It is widely accepted that the former is dominant for the gaseous system and barely contributes in solids, while the latter is dominant for solids and biomolecular materials including proteins.[@babaei2012]

In classical molecular mechanics, the total energy of a protein system, $E$, is expressed as the sum of its kinetic energy and potential energy:

$$
  {E} = \bm{\sum}_{i=1}^N  \frac{\bm{p}_{i}^2} {2m_i} + V(\bm{r}_1, \bm{r}_2, ..., \, \bm{r}_N),
$$
{#eq:eq3}

where $m_i$, $\bm{p}_i$ are the mass and the momentum of atom $i$, and $V(\bm{r}_1, \bm{r}_2, ..., \, \bm{r}_N)$ is the potential energy term.

The time derivative of ${E_i}$ can be expressed as

$$
\frac{dE_i}{dt} = \bm{\sum}_{j(\neq{i})}^N \frac{1}{2} \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j}),
$$
{#eq:eq4}

where $\bm{F}_{ij}$ is the force acting on atom $i$ due to atom $j$. A detailed derivative process can be found in [APPENDIX A](#a-atomic-expression-of-heat-current)

Thus, we obtained atomistic expression for the heat current as

$$
\bm{h}=\bm{\sum}_{i=1}^N \bm{r}_i \frac{dE_i}{dt} =  \bm{\sum}_{i}^N \bm{r}_i \bm{\sum}_{j}^N  \{ \frac{1}{2} \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j})\}, 
$$
{#eq:eq5}

with the inter-atomic heat current between atoms $i$ and $j$, $\bm{h_{ij}}$, denoted as

$$
{\bm{h_{ij}}} = ({\bm{r}_i}-{\bm{r}_j}) \{\frac{1}{2}  \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j})\}.
$$
{#eq:eq6}


### Local Thermal Transport

![Thermal transport through backbone model. Local heat currents, $\bm{h}_{\alpha, \alpha}$ and $\bm{h}_{\alpha, \alpha+1}$, occur within each residue $\alpha$ and between each pair of residues $\alpha$ and $\alpha+1$.](figures/cross/divided_model.jpeg){#fig:divided_model width=50%}

The local heat current, @eq:eq6, characterizes the essential biophysical nature of a protein molecule, i.e. its structure, dynamics and interactions.
We expect that the local thermal transport of a highly non-uniform molecule such as protein can naturally be illustrated with ACF of the local heat current within each residue and between each residue pair.
It is needless to say that amino acids work as the building blocks of proteins.
Therefore, it would be helpful if we could characterize the local thermal transport residuewise.
Spatial scale of each residue, however, is far from macroscopic, and also local fluctuation within each residue may not occur independently from the surrounding protein environment.
Therefore, we need a special care when we discuss about the local thermal transport property based on the ACF formalism.

To address the issue, here we proposed a two-stage strategy.
First, we introduced a simple model ([@fig:divided_model]) with special emphasis on the thermal transport along the polypeptide chain.
In the next section ([@sec:method-cross-correlation]), we considered the theoretical consistency between the ACF formalism based on the local heat current and that on the overall heat current, and derived correction terms to the former.

Previously, we demonstrated that the thermal transport between the entire mainchain and sidechain at each residue position was weak in magnitude and exhibited no noticeable positional dependence.[@yamato2022]
Also, we observed that the thermal transport in a protein molecule mainly occurs either along the polypeptide chain or within each sidechain.
Here, we introduced a model consisting of $N$-nodes (residues) connected along the chain ([@fig:divided_model]), where $N$ is the total number of residues.
In this model, we assumed that heat current occurs within each residue and also between each pair of adjacent residues in a sequence, and no long-range heat current was allowed.
Then, the overall heat current can be expressed as a summation of the partial heat currents:

$$
\bm {h} = \bm{\sum}_{\alpha = 1}^{N} \bm{h}_{\alpha, \alpha} + \bm{\sum}_{\alpha = 1}^{N-1} \bm{h}_{\alpha, \alpha+1}
$$
{#eq:eq7}

where $\bm{h}_{\alpha, \alpha} = \bm{\sum}_{i}^{n_\alpha} \bm{\sum}_{j}^{n_\alpha} \bm{h}_{ij}$ is the intra-residue heat current within residue $\alpha$ consisting of $n_\alpha$ atoms; $\bm{h}_{\alpha, \alpha+1} = \bm{\sum}_{i}^{n_\alpha} \bm{\sum}_{j}^{n_{\alpha+1}} \bm{h}_{ij}$ is the inter-residue heat current between a pair of adjacent residues, $\alpha$ and $\alpha+1$, consisting of $n_\alpha$ and $n_{\alpha + 1}$ atoms, respectively.

To characterize local thermal transport property, we defined some quantities, $\Lambda_{\alpha, \alpha}$, $\Lambda_{\alpha, \alpha+1}$, and $\Lambda$, as time-integrated ACF of partial heat currents and that for the total heat current: 

$$
\begin{aligned}
\Lambda_{\alpha, \alpha} = \bm{\int} \langle \bm{h}_{\alpha,\alpha}(t) \cdot \bm{h}_{\alpha,\alpha}(0) \rangle dt \\
\Lambda_{\alpha, \alpha+1} = \bm{\int} \langle \bm{h}_{\alpha, \alpha+1}(t) \cdot \bm{h}_{\alpha, \alpha+1}(0) \rangle dt
\end{aligned}
$$
{#eq:eq8}

$$
\Lambda  = \bm{\int} \langle \bm{h}(t) \cdot \bm{h}(0) \rangle dt 
$$
{#eq:eq9}

The contribution of the partial heat current, $\bm{h}_{\alpha,\beta}$, to the thermal transport property of the entire molecule can be expressed by a contribution factor, $c$, as follows:

$$
c(\alpha,\beta) \equiv \Lambda_{\alpha, \beta} / \Lambda
$$
{#eq:eq10}

### Cross-Correlation Correction {#sec:method-cross-correlation}

Before we move on to the main subject in this section, let us consider a hypothetical dipeptide consisting of residues A and B.
The thermal conductivity, $\lambda$, of the molecule can be calculated using the autocorrelation function, $\langle\bm h(0) \cdot \bm h(t)\rangle$, of the total heat current, $\bm h$.
Using [@eq:eq6], $\bm h$ can be expressed as a summation of $\bm h_{\rm A}$, $\bm h_{\rm B}$, and $\bm h_{\rm AB}$: the first two currents occur within residues A and B, respectively.
The last one, $\bm h_{\rm AB}$, represents that occurs between residues A and B.

Since we expect that heat flows non-uniformly in the dipeptide, the local thermal conductivity,
$\lambda_A$, $\lambda_{\rm B}$, and $\lambda_{\rm AB}$, should be calculated independently for each of the three regions using $\langle\bm h_{\rm A}(0) \cdot \bm h_{\rm A}(t)\rangle$, $\langle\bm h_{\rm B}(0) \cdot \bm h_{\rm B}(t)\rangle$, and $\langle\bm h_{\rm AB}(0) \cdot \bm h_{\rm AB}(t)\rangle$, respectively.
In an ideal case, where $\bm h_{\rm A}$, $\bm h_{\rm B}$, and $\bm h_{\rm AB}$ fluctuate independently, we are allowed to neglect the cross-correlation terms between them,
i.e., $\langle\bm h(0) \cdot \bm h(t)\rangle = \langle\bm h_{\rm A}(0) \cdot \bm h_{\rm A}(t)\rangle + \langle\bm h_{\rm B}(0) \cdot \bm h_{\rm B}(t)\rangle + \langle\bm h_{\rm AB}(0) \cdot \bm h_{\rm AB}(t)\rangle$.
Furthermore, we can calculate the value of $\lambda$ using the values of $\lambda_{\rm A}$, $\lambda_{\rm B}$, and $\lambda_{\rm AB}$.

In reality, however, there exist strong interactions between residues A and B through the peptide bonding.
Therefore, we expect non-negligible cross-correlations, $\langle\bm h_{\rm A}(0) \cdot \bm h_{\rm B}(t)\rangle$, $\langle\bm h_{\rm A}(0) \cdot \bm h_{\rm AB}(t)\rangle$, and $\langle\bm h_{B}(0) \cdot \bm h_{\rm AB}(t)\rangle$, and the value of $\lambda$ can not be reconstructed by using $\lambda_{\rm {\rm A}}$, $\lambda_{\rm {\rm B}}$, and $\lambda_{\rm AB}$, anymore.
In such analysis, the values of these local thermal conductivities are not consistent with the overall thermal conductivity of the entire molecule.
The basic idea, here, is to take the influence of such cross-correlations into account to obtain the effective local thermal conductivities that fairly characterize the non-uniform thermal transport property of proteins.

Although the local thermal transport property can be analyzed using @eq:eq8, there remains a problem: If we divide the overall heat current into the summation of partial heat currents (@eq:eq7), @eq:eq9 consists of both auto-correlation and cross-correlation terms, whereas the cross-correlation terms, $\langle\bm{h}_{\alpha, \beta}(0) \cdot \bm{h}_{\alpha', \beta'}(t)\rangle ((\alpha, \beta) \ne (\alpha', \beta'))$, are missing in @eq:eq8.
Accordingly, we expect that the summation of all contribution factors, $\sum_{\alpha=1}^{N} c_{\alpha, \alpha} + \sum_{\alpha=1}^{N-1} c_{\alpha, \alpha+1}$, does not equal unity.
If this summation becomes greater (less) than 1, it means that the average intensity of the local thermal transport is overestimated (underestimated) than it really is.

![Short-range cross-correlation approximation. Cross-correlations are considered only for nearby pairs (dashed line).](figures/cross/cross-correlation.jpeg){#fig:cross-correlation width=50%}

To resolve the issue, we examined the role of cross-correlations in this section.
We can assume that the local fluctuation of thermal transfer at one particular site in a protein is not affected by that at another distant site.
Thereby, we introduced a short-range cross-correlation approximation ([@fig:cross-correlation]).
To evaluate such cross-correlations, it is helpful to define a "dimer", denoted as $\{ \alpha, \alpha+1 \}$, consisting of a pair of residues, $\alpha$ and $\alpha+1$ ($\alpha = 1, \cdots, N-1$), adjacent in a sequence, and also its intra-dimer heat current, $\bm{h}_{ \{\alpha, \alpha+1 \}, \{ \alpha, \alpha+1 \}}$.
Then, the cross-correlation, denoted as $\xi$, arising in residues $\alpha$ and $\alpha+1$ can be expressed as (see red dashed line in [@fig:cross-correlation]):

$$
\begin{split}
&\xi_{\alpha, \alpha+1} = \Lambda_{\{\alpha,\alpha+1\}, \{\alpha,\alpha+1\}} - \\
&(\Lambda_{\alpha, \alpha} +  \Lambda_{\alpha, \alpha+1}+\Lambda_{\alpha+1, \alpha+1})
\end{split}
$$
{#eq:eq11}

$$
\begin{split}
&\Lambda_{ \{\alpha, \alpha+1\}, \{\alpha, \alpha+1\} } = \\
&\bm{\int} \langle \bm{h}_{ \{\alpha, \alpha+1\},  \{\alpha, \alpha+1\} }(t) \cdot \bm{h}_{ \{\alpha, \alpha+1\} ,  \{\alpha, \alpha+1\} }(0) \rangle dt
\end{split}
$$
{#eq:eq12}

Next, we derived correction terms for $\Lambda_{\alpha, \alpha}$ and $\Lambda_{\alpha, \alpha+1}$ to obtain their cross-correlation corrected terms, $\tilde\Lambda_{\alpha, \alpha}$ and $\tilde\Lambda_{\alpha, \alpha+1}$, so that the summation of these $\tilde\Lambda_{\alpha, \alpha}$ $(\alpha = 1, \cdots, N)$ and $\tilde\Lambda_{\alpha, \alpha+1}$ $(\alpha=1, \cdots, N-1)$ becomes close to $\Lambda$, i.e.,

$$
\Lambda \simeq \sum_{\alpha = 1}^{N} \tilde\Lambda_{\alpha, \alpha} + \sum_{\alpha = 1}^{N-1} \tilde\Lambda_{\alpha, \alpha+1},
$$
{#eq:eq13}

on the assumption that the effect of cross-correlation is short-range and the influence of $\xi_{\alpha, {\alpha+1}}$ is limited to $\Lambda_{\alpha-1, \alpha}, \Lambda_{\alpha, \alpha}, \Lambda_{\alpha, \alpha+1}, \Lambda_{\alpha+1, \alpha+1}$, and $\Lambda_{\alpha+1, \alpha+2}$ ([@fig:allocation]).
As we shall see later, this model works well, i.e., the L.H.S. and R.H.S. of [@eq:eq13] are 9.79 and 9.88 $\rm{(\AA \cdot kcal)^2/fs}$, respectively.
We further assume that the contribution of $\xi_{\alpha, \alpha+1}$, to ($\tilde\Lambda_{\alpha-1, \alpha}$ and $\tilde\Lambda_{\alpha+1, \alpha+2}$), ($\tilde\Lambda_{\alpha, \alpha}$ and $\tilde\Lambda_{\alpha+1, \alpha+1}$), ($\tilde\Lambda_{\alpha, \alpha+1}$) are respectively $u\xi_{\alpha, \alpha+1}$, $v\xi_{\alpha, \alpha+1}$, and $w\xi_{\alpha, \alpha+1}$ $(\alpha = 2, \cdots, N-2)$, where $u, v, w$ are scalar constants, shown in [@fig:allocation].
It should be noted that the model is regarded as like a linear homopolymer in this formalism.
We obtained a pair of equations for $\tilde\Lambda_{\alpha, \alpha}$ and $\tilde\Lambda_{\alpha, \alpha+1}$ as follows: 

$$
\tilde\Lambda_{\alpha,\alpha} = \Lambda_{\alpha,\alpha} +v (\xi_{\alpha-1, \alpha} + \xi_{\alpha, \alpha+1})
$$
{#eq:eq14}

$$
\tilde\Lambda_{\alpha, \alpha+1} = \Lambda_{\alpha, \alpha+1} + w \xi_{\alpha, \alpha+1} + u(\xi_{\alpha-1, \alpha} + \xi_{\alpha+1, \alpha+2})
$$
{#eq:eq15}

![Allocation of cross-correlation term](figures/cross/allocation_principle.jpeg){#fig:allocation width=50%}

Here, we introduce $N \times N$ matrices, $\{\bm{\Lambda}\}_{\alpha, \beta} = \Lambda_{\alpha, \beta}$, $\{\bm{\tilde\Lambda}\}_{\alpha, \beta} = \tilde\Lambda_{\alpha, \beta}$, and $\{\bm{\xi}_{\alpha, \beta}\} = \xi_{\alpha, \beta}$, where $\bm{\xi}$ is symmetrized , i.e., $\xi_{\alpha+1, \alpha} = \xi_{\alpha, \alpha+1}$, $(\alpha = 1, 2, \cdots, N-1)$.
Then, we obtain the following equation:

$$
\bm{\tilde\Lambda} = \bm{\Lambda} + \bm{T} \bm{\xi} + \bm{\xi} \bm{T},
$$
{#eq:eq16}

where, $\bm{I}$ is the $N \times N$ identity matrix, 

$$
\bm{T}_1 =
\begin{pmatrix}
  0 &                &                     &                                        \\
  1 & \hspace{-4pt}0 &                     &                     & \hspace{-4pt}0   \\
    & \hspace{-4pt}1 & \hspace{-4pt}0      &                     &                  \\
    &                & \hspace{-4pt}\ddots & \hspace{-4pt}\ddots &                  \\
    & \hspace{-4pt}0 &                     & \hspace{-4pt}1      & \hspace{-4pt}0 & \\
    &                &                     &                     & \hspace{-4pt}1 & \hspace{-4pt}0
\end{pmatrix}, 
%
\newline
\bm{T}_2 =
\begin{pmatrix}
  0 & \hspace{-4pt}0 & \hspace{-4pt}1      &                                           \\
    & \hspace{-4pt}0 & \hspace{-4pt}0      & \hspace{-4pt}1      & \hspace{-4pt}0      \\
    &                & \hspace{-4pt}\ddots & \hspace{-4pt}\ddots & \hspace{-4pt}\ddots \\
    &                &        & \hspace{-4pt}0      & \hspace{-4pt}0  & \hspace{-4pt}1 \\
    & \hspace{-4pt}0 &        &        & \hspace{-4pt}0              & \hspace{-4pt}0 \\
    &                &        &        &                & \hspace{-4pt}0 
\end{pmatrix},
$$
{#eq:eq17}


$$
\bm{T} = \frac{w}{2}\bm{I} + v\bm{T}_1 + u\bm{T}_2,
$$
{#eq:eq18}

with $u, v, w$ are $\frac{1}{8}, \frac{1}{4}, \frac{1}{4}$, respectively (see [APPENDIX B](#b-derivation-of-scalar-constants-for-allocation-of-cross-correlatio-terms) for details).
To take into account the terminal effects, $\tilde\Lambda_{1, 1}, \tilde\Lambda_{1, 2}, \tilde\Lambda_{N-1, 1}$ and $\tilde\Lambda_{N, N}$ were separately evaluated using @eq:eq14 and @eq:eq15 with $v', w' = \frac{5}{24}, \frac{5}{12}$, instead of $v = w = \frac{1}{4}$.
We defined the contribution factor after cross-correlation correction as:
$$
\tilde c_{\alpha,\beta} \equiv \frac{\tilde{\Lambda}_{\alpha, \beta}} {\Lambda} 
$$
{#eq:eq19}

All of the heat currents and their ACF calculations were conducted by our CURP program, version 1.3[@yamato2022] based on 50 trajectories of _NVE_ MD simulations.

### Equilibrium Molecular Dynamics Simulations 
#### *Simulation Model* 
Equilibrium molecular dynamics simulations were carried out with AMBER 19 package[@d.a.case2019] based on the nuclear magnetic resonance (NMR) structure of villin headpiece, HP36 (PDB code: 1VII[@mcknight1997]).
The protein molecule was immersed in an octahedral solvent box with 2329 water molecules of TIP3P model[@mark2001;@price2004] using LEaP program of AmberTools 19.
Amber ff19SB force field functions[@tian2020] were used for the protein atoms.
All charged residues were considered in their standard protonation state at pH = 7.0.
Four chloride and two sodium ions were added to neutralize the simulation box.
The periodic boundary condition was imposed on the system.
Nonbonded particle-particle interactions[@cornell1995] were considered using a distance cutoff of 9 $\rm\r{A}$ and the long-range electrostatic interactions were treated with the particle mesh Ewald (PME) method.[@sagui2004]
 
#### *Minimization and Equilibration, and Sampling MD Simulations*
Energy minimization of simulation system started from the relaxation of hydrogen atom positions with the heavy atom positions restrained.
Then, the sidechain atom positions were optimized, and the entire protein system was subsequently optimized.

We started five independent MD simulations from the minimum-energy conformation, with different Maxwell-Boltzmann velocity distributions at _T_ = 0.1 K, while keeping positional restraints imposed on the mainchain atoms.
Subsequently, the system temperature was gradually increased from 0.1 to 300 K.
We, then, continued constant temperature, constant volume (_NVT_) MD simulation at $T$ = 300 K for 200 ps without positional restraints.
The thermal equilibrium of the system was achieved by using the constant temperature, constant pressure (_NPT_) MD simulation at $T$ = 300 K, $P$ = 1 atm for another 700 ps.

Next, we continued five independent _NPT_ MD simulations for 56 ns, including 50-ns run with a time step, $\Delta t$, of 2 fs with SHAKE constraints imposed on the bonds involving hydrogen atoms, 1-ns run with a time step of 0.5 fs with SHAKE constraints switched off only for the protein part.
We, then, continued another 5-ns run with the same condition for conformational sampling.

#### *NVE MD simulations*
During the last 5-ns trajectories of the five independent _NPT_ MD simulations, we saved snapshots with atomic coordinates and velocities every 500 ps.
We thus obtained 50 different initial conditions, each of which was used for the subsequent constant volume, constant energy (_NVE_) MD simulation for 1 ns with a time step of 0.5 fs.
During these _NVE_ MD simulations, we saved atomic velocities every 0.5 fs, while atomic coordinates were saved every 1 fs.


## METHODS

Heat current and energy flux in proteins should be highly inhomogeneous and anisotropic, and the behavior of them should vary from site to site.
To depict such nature in more detail, we will further investigate the heat and energy transfer though non-covalent bonded residue pairs using site-selective heat current analysis.
The following two subsections [2.1](#inter-residue-heat-transport) and [2.2](#inter-residue-energy-transport) described the derivation process of inter-residue thermal conductivity ($\lambda_{\alpha,\beta}$) and energy conductivity ($G_{\alpha,\beta}$), respectively.

### Inter-residue Heat Current Analysis

Before deriving the inter-residue heat conductivity and heat conductivity, we first derived atomistic expression of heat current for molecular system based on linear response theory, and the derivation process are detailed in Supplementary Material.
The inter-atomic heat current between atoms $i$ and $j$ in a molecule, denoted as $\bm{h_{ij}}$, can be expressed as:
$$
{\bm{h_{ij}}} = ({\bm{r}_i}-{\bm{r}_j}) \{ \frac{1}{2} \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j} )\}
$$
{#eq:eq1}
<!-- prettier-ignore-end -->

where $\bm{F}_{ij}$ is the force acting on atom $i$ from atom $j$, ${\bm{r}_i}$(${\bm{r}_j}$) and ${\bm{v}_i}$ (${\bm{v}_j}$) position vector are positional vector and velocities of atom $i$($j$).

For a protein contianing $N$ amino acid residues, the entire protein can be divided into $N$ segments in terms of residues, then the total heat current, $\bm{h}$, can be expressed by a sum of partial heat current: $\bm{h} = \sum_{\alpha=1}^{N} \bm{h_{\alpha}}$.

Then, the heat current between residue $\alpha$ and $\beta$ can be expressed as:

<!-- prettier-ignore-start -->
$$
\bm{h}_{\alpha, \beta} = \bm{\sum}_{i\in\alpha}\bm{\sum}_{j\in\beta}\bm{h_{ij}}
$$
{#eq:eq2}
<!-- prettier-ignore-end -->

The inter-residue heat conductivity between residue $\alpha$ and $\beta$, denoted by $\Lambda_{\alpha,\beta}$, can be expressed by the time-integral of their heat current auto-correlation function as:
$$
\Lambda_{\alpha, \beta} = \bm{\int} \langle \bm{h}_{\alpha, \beta}(t) \cdot \bm{h}_{\alpha, \beta}(0) \rangle dt
$$
{#eq:eq3}
<!-- prettier-ignore-end -->

The inter-residue thermal conductivity, $\lambda_{{\alpha, \beta}}$, can be expressed as,
$$
\lambda_{\alpha, \beta} = \frac {1} {3(V_{\alpha}+V_{\beta})k_BT^2} \bm{\int} \langle \bm{h}_{\alpha, \beta}(t) \cdot \bm{h}_{\alpha, \beta}(0) \rangle dt
$$
{#eq:eq4}
where $V_{\alpha}$($V_{\beta}$) is the volume of residue $\alpha$($\beta$), $k_B$ is the Boltzmann constant, $T$ is the absolute temperature.


### Inter-residue Energy Flow Analysis

The atomistic representation of the instantaneous  energy flow ($\bm{J}$) between two atoms in a molecule, $i$ and $j$, can be expressed by: 

<!-- prettier-ignore-start -->
$$
\bm{J_{ij}} = \frac{1}{2} (\bm{v}_i \cdot {\bm{F}_{ij}} - {\bm{v}_j} \cdot \bm{F}_{ji}) = \frac{1}{2} {\bm{F}_{ij}} \cdot ({\bm{v}_i + \bm{v}_j})
$$
{#eq:eq5}
<!-- prettier-ignore-end -->

where $\bm{J_{ij}}$ is the inter-atom energy flow between atom i and atom j.

Then, the energy flow between residue $\alpha$ and $\beta$ can be expressed as:

<!-- prettier-ignore-start -->
$$
\bm{J}_{\alpha, \beta} =  \bm{\sum}_{i\in\alpha}\bm{\sum}_{j\in\beta}\bm{J_{ij}}
$$
{#eq:eq6}

Here, we introduced a transport coefficient-like quantity, _energy conductivity_, donated as $G_{\alpha,\beta}$, to measure the amount of energy transferred per unit time between two residues through native contacts.

<!-- prettier-ignore-start -->
$$
G_{\alpha, \beta} = \bm{\int} \langle \bm{J}_{\alpha, \beta}(t) \bm{J}_{\alpha, \beta}(0) \rangle dt
$$
{#eq:eq7}

From [@eq:eq1] and [@eq:eq4], we can see that the relationship between atomistic heat current and energy flux is: 

$$
\bm{h}_{ij} = ({\bm{r}_i}-{\bm{r}_j}) \bm{J_{ij}}
$$
{#eq:eq8}

In this study, the integration time of auto-correlation function for both heat current and energy flux was set as 60 ps.
All calculations of $\lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$ between each pair of residues in native contact using the _CURrent calculations in Proteins_ (CURP) program of version 1.3 developed by our lab[@yamato2022]

### Equilibrium MD Simulations

#### System setup for MD simulations
The thermal and energy transport properties of villin headpiece, HP36, were studied by MD simulations based on the nuclear magnetic resonance (NMR) structure (PDB code: 1VII) by using Amber package and AmberTools 19.
The protonation states of all ionizable residues were kept in their neutral solution states at pH = 7.
We used a small time step for MD simulations for generating time series of the heat current and energy flow.
Thus, we keep the system size as small as possible in this study.
After the protein molecule was solvated by a truncated octahedral box of TIP3P water molecules with 2 sodium and 4 chloride ions, the total number of molecules for the simulation box was 7589.
Amber ff19SB force field was used for protein molecule.
For efficient long-range electrostatic calculations, the particle mesh Ewald (PME) method was used under periodic boundary condition.

#### MD Simulations
Energy minimization of the system was performed in three-stage optimization for the positions of (1) hydrogen, (2) sidechain, and (3) mainchain atoms.
Starting from the energy minimum conformation, multiple pre-sampling MD simulations were conducted using the time step of 2.0 fs with the SHAKE constraints applied for any bonds involving hydrogen atoms.
At the beginning, we generated five different Maxwell-Boltzmann velocity distributions at 0.1 K, then heated the system (0.1 K to 300 K)for 50 ps by performing constant temperature, constant volume (_NVT_) MD simulation with positional restraints on the mainchain atoms.

For each branch of simulation runs, another _NVT_ simulation followed at _T_ = 300 K for 50 ps with keeping the same positional restraints, then a Langevin MD simulation was performed for 200 ps at _T_ = 300 K with no positional restraints.
Finally, isothermal-isobaric (_NPT_) simulation was performed for 700 ps at _T_ = 300 K, _P_ = 0.987 atm.

Starting from each end point of the previous simulations, we continued an _NPT_ MD simulation for 56 ns consisting of 50-ns, 1-ns, and 5-ns runs with time steps of 2.0, 0.5, and 0.5 fs, respectively.
After the first segment, the SHAKE constraints were switched off.
From the last 5-ns trajectory, 10 snapshots of atomic coordinates and velocities were extracted every 0.5 ns.
As a result, we obtained 50 (=5 × 10) initial conditions, from each of which we performed constant volume, constant energy (*NVE*) MD simulations for 1 ns with time step of 0.5 fs, and atomic coordinates, and velocities were saved every 1 fs.

### Definition and Classification of Non-covalent Contacts 
#### Definition

To describe the intramolecular interaction networks in proteins, the protein contact networks (PCNs) [@dipaola2013;@dipaola2015;@dipaola2022] have been introduced, aiming to unravel the relationship between protein structure and function.
In PCNs, two residues whose alpha-carbon atoms (CA) are within 4-8 Å of each other are considered to have contacts and interactions.
In this study, we defined non-covalent contacts based on a geometric criterion where residue pairs with a nearest atom distance of 7 Å or less were considered to have a significant role in heat and energy transport, as the thermal transport becomes negligible for pairs separated farther than this threshold.
A total of 269 residue pairs in HP36 were screened using the _pickup-respairs_ module of CURP 1.3.

#### Classification

The non-covalent contacts among residues are categorized into five types based on the geometric structure of HP36 and MD simulation trajectories: hydrogen bond contacts, $\pi$ stacking contacts between aromatic side chains, electrostatic contacts for both residues that are charged or polar, and hydrophobic contacts for either of them being hydrophobic residue.
Hydrogen bond contacts are identified from MD simulation trajectories by the _cpptraj_ module of AmberTools 19, with a geometric criteria, i.e., the distance between atom $i$ and atom $j$ from a pair of shorter than 3.0 Å and the angle $i$-H...$j$ or $j$-H...$i$ within 145-180$^\circ$. Here, $i(j)\in$ residue A (B), and $i(j)$ is either O or N atom in protein.
On the other hand, $\pi$ stacking contacts are identified using RING3.0 server based on the NMR structure of HP36.

### hydrogen bond occurrence probability
The hydrogen bons are found to facilitate the thermal transport in helices-constructed material.[@mino2014;@he2021] 
To quantitatively characterize the strength of hydrogen bonds, we assessed their integrity during the simulation process by calculating the lifetime of detected hydrogen bond and term it into hydrogen bond occurrence probability ($P_{HB}$).
The _cpptraj_ module in AMBER was utilized to probe hydrogen bonds between residues and their lifetime in the simulation.
The hydrogen bonds definition and screening criterion is same as that in Section [2.4](#definition-and-classification-of-non-covalent-contacts).
The hydrogen bonds occurrence probability can be calculated by the following formula:

$$
P_{HB} = \frac {\sum_{i=1}^{N} n_i}{N}
$$
{#eq:eq9}

where $P_{HB}$ is the probability of hydrogen bond occurrence probability between residue $\alpha$ and residue $\beta$ during a certain simulation time with $N$ snapshots, $n_i$ is the number of hydrogen bond formed between residue A and B.

### Random Forest Regression
The random forest regression model was applied to predict the $\lambda_{\alpha,\beta}$ by using sklearn's _RandomForestRegressor_ function in Python.
The whole datasets were split into two groups for model fitting and evaluation: training set (80%) and testing set (20%).
The mean squared error loss was calculated for the split quality measurement.



Seven predictors are selected for prediction of $\lambda_{\alpha,\beta}$ of non-covalent contacts in HP36 and using features adapted from structural analysis and MD trajectories analysis.

### Network Models

We constructed three network models: _Protein Contact Network_, _Energy Exchange Network_, and _Thermal Transport Network_, to map the native contacts in proteins.

The protein contact network (PCN) of HP36 was constructed using only structure information in PDB format (PDB code: 1VII).
In this network, every amino acid (residue) is considered a node, while contact between two residues is considered an edge[@dipaola2013;@dipaola2015;@chasapis2021].
Two residues ($\alpha, \beta$) are considered to have contact if the shortest distance between their atoms is $\le$ 6 Å.
The distance between residue $\alpha$ and $\beta$ ($d_{\alpha, \beta}$) is calculated using their coordinates of the center of mass.
The edge is weighted by using $w_{\alpha, \beta}$ $= 1/d_{\alpha, \beta}$

Due to the values of $w_{\alpha, \beta}$, $G_{\alpha, \beta}$ and $\lambda_{\alpha, \beta}$ are on different scales,
to facilitate a better comparison between the protein contact network, energy exchange network, and thermal transport network, their original values were normalized using Min-max normalization method with a linear transformation to make all scaled data falls within the range of (0, 1).
The formula for this transformation is:

$$
V_{scaled} = \frac{V-V_{min}}{V_{max}-V_{min}}
$$
{#eq:eq10}

where $V$ represents either $w_{\alpha,\beta}$, $\log{G}_{\alpha, \beta}$, or $\log{\lambda}_{\alpha, \beta}$.

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

### Parameterization of the Fe^3+^ Metal Cofactor{#sec:parameterization}

![Molecules used to obtain the tuned force field parameters for met-FixLH dimer system. (a) Molecule used in Gaussian optimization calculations to obtain the Fe3+ metal associated bond and angle parameters. (b) Molecule used used in Gaussian RESP partial charge calculations to obtain the partial charges for the metal site.](figures/fixl/met-fixl-force-field.jpg){#fig:met-fixl-force-field width=100%}

![Molecules used to obtain the tuned force field parameters for met-FixLH-imd dimer system. (a) Molecule used in Gaussian optimization calculations to obtain the Fe3+ metal associated bond and angle parameters. (b) Molecule used used in Gaussian RESP partial charge calculations to obtain the partial charges for the metal site.](figures/fixl/met-fixl-imd-force-field.jpg){#fig:met-fixl-imd-force-field width=100%}

The force-field parameters of the non-standard part of dimeric FixLHs were
generated using MCPB.py module[@li2016;@li2017] in AmberTools 15. A small
model and a large model of two dimeric FixLH proteins generated from
MCPB.py (@fig:met-fixl-force-field: met-FixLH, @fig:met-fixl-imd-force-field: met-FixLH-imd) were used to
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
met-FixLH-imd protein, respectively (@tbl:quantumcalculation). The optimized geometry,
the atom types, partial charges for the RESP fittings and force field
parameters of the metal site generated from MCPB.py are shown in
Supporting Information (SI).
  
|               | Spin=2              | Spin=4        | Spin=6         |
| :------------ | :------------------- | :------------ | :--------------- |
| Met-Heme      | -3402.1853060                  | -3402.1959457 | \textcolor{red}{-3402.1976629} |
| Imdazole-Heme | \textcolor{red}{-3627.8693349} | -             | -3627.8189808                  |

: Quantum calculation results of met-FixLH and met-FixLH-IMD. Hart Fork Energy (unit: a.u.) comparison among different spin states of met-FiLH and met-FixLH-IMD. {#tbl:quantumcalculation}


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
model the heme, ligands, and H200. The long-range electrostatic
interactions were treated with the particle mesh Ewald method[@essmann1995] and
nonbonded particle-particle interactions[@duan2001] were considered using a 9.0
Å cutoff. The time step for all MD simulations was set as 2.0 fs and
SHAKE was used to constrain hydrogens for product run MD simulations. To
prevent the dissociation of A'α helices, a harmonic restraint with a
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
developed by our lab (<https://curp.jp>).[@ishikura2012;@leitner2009;@yamato2022]
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

## COMPUTATIONAL MODELING
Considering the spatiotemporal heterogeneity and high conformational flexibility of Thalassosira pseudonana CP12, we designed a three-stage modeling strategy. First, initial guess structures of the CP12 dimer were predicted by AlphaFold2.[@jumper2021;@evans2021]
Then, the most likely structure of them was roughly refined by the harmonic restrained all-atom molecular dynamics (MD) simulations so as to meet the experimental (SAXS[@shao2021] and EPR/DEER) data. Finally, the structures thus obtained were further refined by restrained-ensemble molecular dynamics (reMD) simulations[@roux2013;@shen2015;@islam2013;@qi2020] so that the distance distributions of all spin pairs agree between reMD simulations and the experimental EPR/DEER data.

![(A) Refinement scheme for the model obtained from AlphaFold2. (B) Starting model for the harmonic restrained MD simulations. C) Distances (blue) and distance distributions (black) between spin label pairs of the starting model for reMD simulation and DEER experiment data, respectively.](figures/cp12/scheme.jpg){#fig:scheme width=100%}

### FASTA sequence{#sec:sequence}
The full-length amino acid sequence including the 163 residues (red) that were used as input for AlphaFold2 modeling:
\newline MKIFLASLIGSCAAFAPAPFGKSPTALFGRVDTS\textcolor{blue}{AIEAALDASKKFGSTSSEARVLWDIVEEMD
ASDNSVASKAPIVDSEYEAKVKSLSQMLTKTKAELDQVKALADDLKGVKLASPSVGSSAP
DDSVMKEALAAARAATEEFGQSSPQARLAWETVEEIAASPVDIRAPLDEECLIELIEGCEA
LEKFQAALGSR}

### Starting model
Structure prediction for the CP12 homodimer was performed using AlphaFold v2.1.1-Multimer (AF2) and the default databases[@jumper2021;@evans2021;@tunyasuvunakool2021]. The amino acid sequence of the wild-type (WT) was downloaded from NCBI[@shao2021]. A truncated FASTA sequence containing 163 residues (the blue part of sequence in @sec:sequence) without His-tag was used in the AF2 input file for multiple sequence alignments (MSAs) lookup and structural template matching. For WT, S46C and S56C mutants, their homodimeric structure was predicted with the top five ranked models. For the model confidence, along with the prediction results, a measure called predicted local distance difference test score (pLDDT, on a scale from 0 - 100, where 100 represents the most confident) was used to estimate the per-residue confidence.

### Refinement by Molecular Dynamics Simulations 
To refine the starting model thus obtained, all-atom harmonic restrained MD simulations without spin labels followed by restrained-ensemble MD (reMD) simulations with spin labels were performed to obtain a realistic conformational ensemble that fit with both the experimental SAXS curve[@shao2021] and the spin-spin distance distributions derived from EPR/DEER experiments. The simulation process is summarized in a logic diagram, shown in @fig:scheme A. Due to the high flexibility of R1 spin labels with 5 dihedral angles, the reMD simulation[@roux2013] technique for the model with all-atom spin labels is suitable to exploit protein’s structure in their native environment based on multiple distance histograms information obtained from EPR/DEER spectroscopy. It should be noted that a large discrepancy of the spin pair distance in the initial structure of reMD simulation with DEER data may cause extraordinary rapid atomic movements leading to unexpected termination during the simulation process. Thus, to avoid such violation, a screening on the starting model is needed based on the distance information between all spin pairs, before each run of reMD simulation.

We started the structural refinement using MD simulations from a model (@fig:scheme B) that was modified from the AF2 model (S56-2 of @fig:af2-output). Despite their high conformational flexibility that was revealed by DEER (C150 in @fig:scheme C), these two well-structured C-terminal helices were overfolded with the coiled-coil in the AF2 model (@fig:predicted-model) and could not be efficiently sampled by our preliminary calculations with conventional constant temperature, constant pressure MD simulations, even at a temperature higher than room temperature. Therefore, we manually moved two C-terminal helices away from the coiled-coil part of the dimer (@fig:scheme B). The computational detail of the subsequent simulations is explained below.

![Top 5 homodimer models for WT, S46C and S56C mutants are shown with each residue being colored according to its per-residue confidence score (pLDDT): Blue (high), cyan (high medium), yellow (low medium) and red (low).](figures/cp12/af2-output.jpg){#fig:af2-output width=100%}

(1)	We conducted harmonic restrained MD simulations with the Amber 20 package[@case2020] based on the modified AF2 model. The Amber ff19SB force field[@tian2020] was used for the protein, which was immersed into a cubic periodic box filled with water solvent molecules modeled by the OPC model[@izadi2014] with the LEaP program of AmberTools20. All charged residues were considered in their standard protonation state at pH = 7.0. We added 28 sodium ions to neutralize the simulation box and the total number of atoms became 178352. Nonbonded particle-particle interactions[@duan2001a] were considered with a distance cutoff of 9 Å and the long-range electrostatic interactions were treated with the particle mesh Ewald (PME) method[@salomon-ferrer2013].
After minimization, heating, and equilibration of the simulation system, several rounds of MD simulations were conducted imposing harmonic restraints on the CA-CA distances across the dimer for respective spin-labeled residues S39, S46, S56, S83, and C150 with a spring force of 30 kcal/(mol·Å^2^). Each round ran for 100ps with time step of 2 fs at _T_ = 300 K and _P_ = 0.978 atm. The trajectories and snapshots were saved every 1 ps. The initial/target distances for each CA atom pair were 73 Å/68 Å for S39, 57 Å /43 Å for S46, 26 Å/ 32 Å for S56, 51 Å/64 Å for S83, 12 Å/25 Å for C150, respectively. The target distances were quickly reached in the first 2 ps in each round (@fig:time-evolution). 

![Time evolution of the CA-CA distances. We consider five residue pairs, S39-S39, S46-S46, S56-S56, S83-S83, and C150-C150 in the dimer. For each pair, the CA-CA distance are plotted as a function of time during harmonic restrained MD simulation using Amber.](figures/cp12/time-evolution.jpg){#fig:time-evolution width=100%}

(2)	Using saved snapshots, we stripped the waters and used CRYSOL[@svergun1995] of ATSAS-3.0.4-2[@franke2017] to compare the simulated SAXS curve with the experiment[@shao2021]. 
(3)	If the simulated SAXS curve was in good agreement with the experiment, then we added all-atom spin label CYR1[@jo2014] to residues S39, S46, S56, S83, and C150, respectively, using the reMD Prepper module of CHARMM-GUI[@qi2020], then measured the initial distance of each spin pairs. 
(4)	If all distances of spin pairs fell in the experimentally measured range, then we moved on to the reMD simulations by using a modified version of NAMD 2[@shen2015;@qi2020] with all-atom CHARMM36m protein force field[@huang2017]. We attached 25 copies of all-atom CYR1 spin labels to residues S39, S46, S56, S83 and C150, respectively, with reMD Prepper in vacuum for saving the computational resources. During the whole reMD simulations, the N, Cα, C, and O atoms of each spin label were fixed to the corresponding atoms in the labeled residues (@fig:spin-label) using a force constant of 10 kcal/(mol·Å^2^). The force field of all-atom CYR1 spin label[@islam2015] is provided by CHARMM-GUI. Spatial overlap among the 25 copies of CYR1 spin labels was allowed by neglecting the interactions among them. Five independent all-atom reMD simulations were conducted at 303.15 K with different random number seeds using Langevin dynamics with a damping coefficient of 5 ps^–1^. Before each reMD production run, we performed minimization and equilibration, during which only sidechain atoms were relaxed, keeping the backbone atom positions with harmonic restraints of 2 kcal/(mol·Å^2^) imposed on them. For further structural refinement, we switched off the harmonic restraints imposed on the backbone atoms, and conducted production runs of reMD simulations for 2 ns with a time step of 0.5 fs. The long-range electrostatic interactions were treated with the particle mesh Ewald (PME) method[@petersen1995] and the nonbonded interactions were truncated at a 10 Å distance cutoff. The distance distributions of each spin label pair were restrained with a force constant of 100 kcal/(mol·Å^2^) toward the experimental distance distribution histograms with a bin width of 0.025 nm. The atomic coordinates of each reMD production run were saved every 1ps. Since each spin label has 25 copies, a total number of 625 distances for each spin label pair were obtained from a single snapshot of trajectories and a total of 1, 250, 000 data points were yielded for every spin label pair from one single reMD production run. Trajectory analysis and protein visualization were performed with VMD[@humphrey1996] and PyMOL[@llc2015], respectively.

![The fixation between CYR1 spin label and its attached residues. The all-atom CYR1 spin label has a main chain like amino acid. The reMD simulation adds and fixes the spin label model by overlapping the main chain of spin label attached residue and the main chain of spin labels with a harmonic force constant of 10 kcal/(mol·Å^2^).](figures/cp12/spin-label.jpg){#fig:spin-label width=100%}