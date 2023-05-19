\newpage

# Local Thermal Transport in an $\alpha$-helical Protein 
## Abstract

Although thermal transport is among the essential biophysical properties of proteins, its relationship with protein structures, dynamics, and functions is still elusive.
The structures of folded proteins are highly inhomogeneous, giving rise to anisotropic and non-uniform flow of thermal energy during conformational fluctuations.
To illustrate such nature of proteins, we developed a theoretical framework for analyzing local thermal transport property based on the autocorrelation function formalism, constructed a linear-homopolymer-like model, and applied it to a small $\rm{\alpha}$-helical protein, villin headpiece subdomain (HP36), using equilibrium molecular dynamics simulations.
As a result, the model reproduced the exact value of the protein thermal conductivity with an error of less than 1%.
Interestingly, the site-selective analysis of the local, residue-wise, thermal conductivity demonstrated its distinct residue-type dependence, i.e., its magnitude decreased in the order of charged, polar, and hydrophobic residues.
In addition, the local density dependence of the residue-wise thermal transport property was also discussed.

## INTRODUCTION

The structure, dynamics, and function of proteins are controlled by thermodynamic and environmental conditions such as temperature[@kashio2022;@thompson2019;@riedel2015;@kiyonaka2013;@weik2010;@johnson2007] and protein-solvent interactions.[@adams2021;@tanimoto2021;@devineau2017;@oroguchi2017;@continibali2014;@mcmahon2014]
Although thermal transport is among the essential biophysical properties of proteins, the interplay between heat flow and the molecular mechanism of protein function is still elusive.

So far, the vibrational energy transport in peptides and proteins has been extensively investigated by experimental[@mizutani2022;@yamashita2018;@botan2007;@deniz2021] and theoretical/computational methods.[@leitner2010;@li2022;@thompson2014;@fujisaki2005]
Experimental methods such as time-resolved spectroscopy have been employed to monitor the redistribution of excess energy injected into short peptides and proteins.
Computational methods, including equilibrium- and non-equilibrium molecular dynamics (MD) simulations,[@kobus2011;@buchenberg2016;@continibali2017;@kumawat2017;@mino2014;@kurisaki2023] and normal mode analysis based approaches[@pandey2017] have been developed and applied to simulate the vibrational energy flow in proteins.
Based on these methods, numerous efforts have been devoted to identifying determinant[@yamashita2018;@deniz2021;@mino2014] of vibrational energy transport and its role in allosteric signal transduction.
Theoretical methods provide useful tools to investigate such issue in atomic detail.
One possible approach is to introduce a transport-coefficient-like quantity based on the autocorrelation function of energy flow, i.e., the amount of energy transferred per unit time.[@ishikura2006]
This method was applied to construct a network of amino acid residues, through which intramolecular vibrational energy is propagated.
Then, protein allosteric signal transduction mechanism was investigated,[@ota2019;@reid2020;@poudel2023] using equilibrium MD simulations.
Non-equilibrium MD simulations were employed to mimic the dissipation of excitation energy from an unnatural amino acid (built-in heater) to map the vibrational energy transport pathways starting from the built-in heater.[@deniz2021]
A theoretical tool, master equation model, has been used to predict the energy transport pathways in proteins,[@buchenberg2016;@reid2021;@valinoborau2020] and comparisons were made between the model and all-atom non-equilibrium MD simulation results.
To theoretical approach, scaling rule, was employed to illustrate the role of protein structure and dynamics on the vibrational energy transport in proteins.
[@buchenberg2016;@reid2018] Vibrational transport occurs not only in a protein molecule but also across the protein-solvent interface and within solvents, for which theoretical analyses were made.[@agbo2014;@sagnella2001]

Among theoretical analysis of thermal transport in proteins, molecular dynamics simulation has an apparent advantage in _direct_ measurement of heat current with high spatiotemporal resolution.
Furthermore, we can compute protein thermal conductivity from the time series of heat current.
It is possible to experimentally verify the value of thermal conductivity.
We have developed an open source code, _CURrent Calculations for Proteins_ (CURP, https://curp.jp), and applied it to an $\rm\alpha$-helical protein, villin headpiece (HP36).[@yamato2022]
The computed value of its thermal conductivity was in good agreement with other globular proteins in the literatures, and the Fourier transform of the autocorrelation function of the polypeptide backbone heat current reproduced characteristic peaks of amide bands.

The structure of a folded protein is highly inhomogeneous, giving rise to anisotropic and non-uniform flow of thermal energy during conformational fluctuations.
Therefore, it would be helpful to develop a theoretical method to analyze the thermal transport property of a protein in a site-selective manner.
For instance, such a concept as _residue-wise thermal conductivity_ may be useful.
However, some difficulties are anticipated in such attempt.
Within a protein matrix, the space occupied by each individual amino acid residue is small in scale and therefore the boundary effects on the reside-wise thermal conductivity may not be negligible.
Also, local conformational fluctuation within a residue may not be independent from those in the surrounding amino acid resides.
To address this issue, we build a theoretical model (linear-homopolymer-like model) based on the autocorrelation function formalism with cross-correlation corrections.
We applied this model to HP36.
In [@sec:method-cross-correlation], we summarize basic formulae for the thermal transport property of molecular systems, describe our linear-homopolymer-like model and short-range cross-correlation correction.
In [@sec:results-and-discussion], we report the computational results of the site-selective heat current analysis.
Finally, we present concluding remarks in [@sec:conclusion].

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

## RESULTS AND DISCUSSION {#sec:results-and-discussion}

### The Overall Thermal Conductivity {#sec:overall-thermal-conductivity}

![Thermal conductivity of the entire HP36 protein molecule. The heat current autocorrelation function was ensemble-averaged and plotted as a function of time (blue), and the short-time region (0 - 0.2ps) is shown in the inset. The heat current autocorrelation function was integrated with respect to time using trapezoidal rule to obtain $\lambda$ (orange), and the running mean of $\lambda$ is shown with a window size of 100 fs (red). The value of volume was set as 4845.447 $\AA^3$.[@yamato2022]](figures/cross/hcacf-100ps.jpeg){#fig:hcacf-100ps width=50%}

The overall thermal conductivity, $\lambda$, of the HP36 protein was calculated using @eq:eq1.
We used the web server[@esque2013] to calculate the total volume of HP36 and individual atom volumes using VLDP (Voronoi Laguerre Delaunay Protein) method.
It also calculates the volume of each amino acid residue as a summation of the volumes of constituent atoms.
Unlike other Voronoi-based methods that assume the same radii for all the atoms, the VLDP method takes into account the atom type and performs tessellation.
As a result, the volume of each cell tends to become larger for the atom with the larger radius, providing realistic representation of atom packing in protein interior.
It should be noted that the protein molecule is solvated by waters before volume calculations by the server.
Hereafter in this paper, the calculated volumes of protein, residue, and atom by the VLDP method are simply referred to as protein, residue, and atom volumes, unless otherwise noted.
After taking ensemble average of the heat current autocorrelation function, we performed its time (_t_) integration ([@fig:hcacf-100ps]).
The value of $\lambda$ converged at around $t$ = 60 ps to 0.26 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$.
It should be noted that the calculated value of $\lambda$ is slightly different from the previous calculation[@yamato2022] mainly because we used a "flexible" TIP3P model previously.
We will discuss the water model dependence on the thermal conductivity later.
In the following, we set the upper limit of the time-integration of the local heat current autocorrelation function as 60 ps.

### Local Thermal Transport

![Contribution factors without cross-correlation corrections. Intra-residue ($c(\alpha, \alpha)$, red) and inter-residue ($c(\alpha, \alpha+1)$, green) contribution factors (@eq:eq11, @eq:eq12) are plotted. For instance, data point $c(1,2)$ is shown between $\alpha$ = 1 and 2. The horizontal axis shows the amino acid residue number, $\alpha$, together with residue name in one-letter code. The areas shaded by grey correspond to the $\alpha$-helical regions.](figures/cross/heat-conductivity-before-corrected.jpeg){#fig:heat_before width=50%}

The contribution factors for the intra-residue and inter-residue heat currents were plotted in [@fig:heat_before].
Overall, the intra-residue contribution factors are greater than the inter-residue ones, expect for the terminal residue pairs (Met1-Leu2, Leu35-Phn36) and Gly12-Met13.
The average intra-residue contribution factor (0.029) is almost twice that of the average inter-residue contribution factor (0.016), suggesting that the intra-residue thermal transport has dominant contribution to the overall heat current, in good agreement with the master equation analysis.[@buchenberg2016]
In contrast to the above two major types of thermal transport, contributions from sidechain-sidechain heat currents across non-bonded native contacts are much smaller.[@yamato2022]

The summation of these intra- and inter-residue contribution factors were $\bm{\sum}_{\alpha=1}^{36}{c(\alpha,\alpha)} = 1.06$ and $\bm{\sum}_{\alpha=1}^{35}{c(\alpha,\alpha+1)} = 0.57$, respectively.
It is likely that the deviation of 1.06 + 0.57 = 1.63 from 1 is attributed to the existence of non-negligible cross-correlation effects among different partial heat currents.
In next section, we considered such cross-correlation effects in more detail.

### Cross-correlation Correction

![Nearest neighbor cross-correlation. $c^{\rm{cross}}(\alpha,\alpha+1) \equiv \xi_{\alpha,\alpha+1} / \Lambda$ is plotted as a function of the residue number. For instance, data point $c^{\rm{cross}}(1,2)$ is shown between $\alpha$ = 1 and 2.](figures/cross/cross-correlation-term.jpeg){#fig:cross width=50%}

Here, we assume that the effective range of cross-correlation is limited to only between adjacent residues along the polypeptide chain.
According to @sec:method-cross-correlation, the cross-correlation term was calculated and plotted in [@fig:cross].
Interestingly, we recognized the secondary structure dependence of the cross-correlation effect, i.e., the $\alpha$-helical regions are less affected by the cross-correlation.
At the moment, the reason for this observation is unclear.
Further study on the secondary structure dependence of the thermal transport property of proteins will be reported elsewhere.

![Contribution factors with cross-correlation correction. See the caption to [@fig:heat_before]](figures/cross/heat-conductivity-after-corrected.jpeg){#fig:heat_after width=50%}

After the allocation of the cross-correlation terms, all of the contribution factors decreased.
The corrected contribution factors were plotted in [@fig:heat_after], which exhibits similar patterns with [@fig:heat_before], and the total intra-residue contribution (0.75) was about three times as much as that of the inter-residue contribution (0.26).

To quantitatively verify the short-range cross-correlation assumption, we also calculated the second nearest cross-correlation between residue $\alpha$ and $\alpha+2$ ($\xi_{\alpha, \alpha+2}$) using the same method described in @sec:method-cross-correlation.
The total value of contribution factors due to the second nearest cross-correlation was 0.03 (Table S2) whereas that for the nearest cross-correlation was $-0.62$ (Table S1), indicating that the second nearest cross-correlation has small impact on the overall heat current.
 
To examine the validity of linear-homopolymer-like model, we compared the time-integrated ACF between $\Lambda$ and $\tilde \Lambda$, the former is derived for the exact heat current of the entire molecule, while the latter the linear-homopolymer-like model.
The calculation results showed that $\tilde \Lambda$ is overestimated only by 0.9% than $\Lambda$, inducating that the linear-homopolymer-like model can successfully represent the thermal transport property of the entire molecule.

### Residue-type Dependence{#sec:residue-type-dependence}

![Scatter plot of contribution factors vs residue volume. The intra-residue contribution factor, $\tilde c$, with cross-correlation correction for charged (green), polar (orange) and hydrophobic (blue) residues are plotted against volume of each residue.](figures/cross/residue_type_dependence_volume_after_correction.jpeg){#fig:residue_type width=50%}

Using site-selective heat current analysis based on the linear-homopolymer-like model, we are allowed to evaluate the local thermal conductivity residuewise.
[@fig:residue_type] shows the residue-type dependence of the intra-residue contribution factors ([@fig:residue_type]).
The residue volume, $V_{\alpha}$, of residue $\alpha$ was obtained as the summation of atomic volume of the constituent atoms.
We used the average value of the residue volume using five representative structures of HP36 in thermal equilibrium at _T_ = 300 K by using VLDP web server.[@esque2013]
We recognize that the values of $\tilde c$ are proportional to the residue volume.
Also, the slope of the linear regression line depends on residue-type, indicating that the value of residue-wise thermal conductivity is sensitive to the residue type and their order decreases in the order of charged, polar, and hydrophobic residues.
The residuewise thermal conductivity $\lambda_{\alpha}$ of residue $\alpha$ is defined as $\tilde\Lambda_{\alpha,\alpha}/(3V_{\alpha}k_B T)$, in consistent with the report that the thermal diffusion along the $\alpha$-helix composed entirely of polar residues is faster than that of non-polar residues.[@mino2014] 

### Local Density Dependence{#sec:local-density-dependence}

<!-- figures* environment create a two-column-sized figures  -->
![Scatter plot and linear correlation of local thermal conductivity and local density. (mass density ($\rho$) = residue mass / residue volume, unit : g/$\rm{cm^3}$](figures/cross/density_combined.jpeg){fig:density}


It has been accepted that the density is one of the important determinants of the thermophysical properties of materials.
The product of material density ($\rho$) and its specific heat ($c_p$), $\rho{c_p}$, is sometimes used as a measure of thermal energy storage capacity.[@bergman2011]
Regarding macroscopic property of homogeneous material, it is known that the denser the medium is, the larger its thermal conductivity becomes.
According to the literatures, for example, the value of thermal conductivity is 0.44 $\mathrm{W{/} (m{\cdot}K)}$ for high density polyethylene and 0.3 $\mathrm{W{/} (m{\cdot}K)}$ for low density polyethylene, respectively.[@xue2019]
In contrast, within heterogeneous materials such as protein molecules, the local density should vary from one site to another.
To examine the relationship between the local density and thermal conductivity, a scatter plot of the residue-wise thermal conductivity vs local density of each residue is shown in [@fig:density].
The local mass density ([@fig:density]a, b) ranges from 1.20 ~ 1.70 $\rm{g/cm^3}$, somewhat having a wider range than those experimentally determined average protein density, 1.39 ~ 1.44 $\rm{g/cm^3}$, and theoretical determined values, 1.35 ~ 1.44 $\rm{g/cm^3}$.[@fischer2009]
This is because that the volume of amino acid residues differs from buried and exposed states, resulting in a wider variety of residue density distribution ([@fig:residue_type]).[@harpaz1994;@baud1999] 

Regression analysis with cross-correlation correction (panel a) indicated that $\lambda$ is proportional to the residue mass density, although the slope is not so steep (i.e., weak density-dependence) with a broad distribution of the data points.
Statistically speaking, the correlation between two variants with a $p$-value less than 0.05 is considered statistically significant.
Their Pearson correlation coefficient and the $p$-value are 0.3 and 0.078, respectively, indicating that their correlation is not significant.
Instead, In panel b, the slope of the linear regression lines of hydrophobic and polar residues are almost flat, i.e., constant $\lambda$, while charged residues exhibited negative proportionality, the reason for which is unclear.
One possibility is that the charged residues tend to have relatively larger volumes than the other types of residues.[@harpaz1994] Besides, as can be seen in panel b, the $\lambda$ of polar residues is about twice that of hydrophobic residues.
This result is highly consistent with the observation of two times faster heat diffusion in the polar residue $\alpha$-helix than that in the non-polar residue $\alpha$-helix.[@mino2014]

For the HP36 protein, the subtotal contribution factor, $\tilde c$, of charged, polar, and hydrophobic residues were 0.32, 0.17, and 0.23, respectively.
Although the proportion of the charged and hydrophobic residues in this protein molecule were 10/36 and 18/36, indicating the contribution from the former dominates over the latter.

### Thermal Diffusivity and Temperature Relaxation Time
In molecular biophysics, vibrational energy relaxation of proteins has been a subject more familiar than the thermal transport property of proteins. In a pioneering study of excess energy dissipation in myoglobin [@mizutani1997], for example, Mizutani and Kitagawa demonstrated that the population of the $\rm \nu_4$ mode of the heme exhibit double exponential decay with the time constants of 1.9 and 16 ps after flash photolysis. Furthermore, they estimated the temperature relaxation times of the vibrational mode to be 3.0 and 25 ps,respectively, assuming Boltzmann distribution for the vibrational mode. We see that the picosecond dynamics play important roles in the temperature relaxation of a protein, which is associated with energy redistribution processes.

It is possible to estimate two parameters, i.e. the thermal diffusivity and temperature relaxation time, using the following equation[@bergman2011;@lervik2010;@kurisaki2023]

$$
\lambda = \frac{\rho c_pR^2}{\tau} = {\rho c_p} {\alpha}
$$
{#eq:eq20} 

where $\lambda$ is the thermal conductivity, $\tau$ is the relaxation time, $\alpha$ is the thermal diffusivity, $\rho$ is the protein desity, $c_p$ is the heat capacity, and $R$ is the effective radius of the protein, which is estimated from protein volume, $V = \frac{4 \pi R^3}{4}$.

The estimated value of $\tau$ is in the range of $8.4 \sim 13.9 \, \rm ps$, or the temeprature relaxation rate is in the range of $0.072\sim 0.119$ $\rm ps^{-1}$.
It should be noted that the reported values of vibrational energy relaxation time range from one to several tens of picoseconds.[@henry1986;@mizutani1997;@lervik2010;@sagnella2001;@bu2003;@fujisaki2005]
The estimated thermal diffusivity is 7.9 ~ 13.2 $\rm\AA^2{\, } ps^{-1}$, in good agreement with the values obtained from non-equilibrium MD simulations.[@botan2007;@nguyen2010]
The density of HP36 was calculated as $\rho$ = 1.57 $\rm{g \, cm^{-3}}$, a little larger than the widely used value (1.35 $\rm{g \,cm^{-3}}$).[@fischer2009]
The heat capacity was set in the range of 0.30 - 0.50 $\rm {cal \,g^{-1} \, deg^{-1}}$.[@gekko1979]

### Water Model
In the previous study on the thermal conductivity of hp36 protein,[@yamato2022] we used Amber ff14SB force-field for the protein atoms and TIP3P water model with the SHAKE constraints switched off, although it is an unusual usage of the TIP3P model.
It is known that anomalous diffusion occurs for simulations with the standard rigid TIP3P water model.[@wu2006;@takemura2007]
To examine the water-model dependence on the protein thermal conductivity, we used Amber ff19SB + TIP3P water model with the SHAKE constraints switched off only for protein in this study.
As mentioned above, the calculated value of $\lambda$ of the whole protein was 0.26 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$, close to 0.3 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$ obtained in the previous study.[@yamato2022] It is possible that the properties of solvent affect the protein thermal conductivity through the protein-solvent interfaces.

As described in **INTRODUCTION**, the structure, dynamics and function of proteins are controlled by protein-solvent interactions. In particular, Straub, Leitner and coworkers reported seminal studies on the energy transport across the protein-water interfaces. Sagnella et al. observed spatially directed "funneling" of kinetic energy from heme to the surrounding solvent for the excess energy dissipation of myoglobin after flash photolysis.[@sagnella2001]
Agbo, Xu, Zhang, et al. examined the cytochrome c-water thermal conductance and demonstrated that the protein-water interface poses no greater Kapitza resistance to thermal flow than the protein itself.
It is interesting to note that the thermal conductance at the protein-solvent interfaces for different types and shapes of proteins exhibits different values of thermal conductance ranges from 100 to 330 $\rm MWK^{-1}m^{-2}$.[@lervik2010;@kurisaki2023;@xu2014;@agbo2014;@agbo2014a]
Hamzi et al. studied the dependence of the thermal conductance at the protein-water interfaces on the types of amino acid residues.[@hamzi2022]
As a result, they observed hydrophobic and aromatic amino acids tend to have a lower interfacial thermal conductance.
Not only the protein-water interface, but also other types of interfaces were also studied.
For example, ulrtrafast energy dissipation was observed from peptide helices to chloroform solvents on the 0.5 ps time scale, as a result of collaboration between experiment and theory.[@botan2007]

To understand how different water models would affect thermal boundary conductance, it would be helpful to consider the vibrational density of states of the protein and water.[@xu2014a;@agbo2014a]
In contrast to the previous study[@yamato2022], populations of some high frequency vibrational modes of solvents are missing in the present study with rigid TIP3P water model, leading to the decrease of thermal conductance at the protein-water interface.
Accordingly, it is possible that the vibrational energy distribution, especially for the surface amino acid residues near the protein-water interface, would be affected.
Also, it is possible that local heat capacities for such amino residues might be affected as well, leading to a change of protein thermal conductivity.
To verify such hypothesis, we need further examination.
Also, systematic studies on the influence of solvent models on the thermal transport properties of proteins and protein-solvent systems are needed to achieve more comprehensive understanding on the nature of protein-solvent systems.

## CONCLUSIONS {#sec:conclusion}
The thermal transport property of an $\alpha$-helical protein (HP36) was investigated based on the linear response theory using equilibrium MD simulations.
The thermal conductivity ($\lambda$) of the entire molecule was calculated as 0.26 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$ using AMBER ff19SB protein force field and rigid TIP3P water model, which is close to the that obtained using flexible TIP3P water model, indicating that the water model parameters do not alter the inherent thermal transport property of proteins.

To further investigate the local heat transport properties within protein interior, we first divided the entire molecule into 36 amino acid residues.
Then, we introduced a theoretical model called linear-homopolymer-like model.
We assumed that the heat flow mainly occurs along the polypeptide backbone as well as within each individual amino acid residue.
Also, we assumed that the cross-correlation of partial heat currents between different regions is limited only within short-range.
As a result, the model reproduced the exact value of the protein thermal conductivity, derived from the total heat current, within the accuracy of 1% error.

Interestingly, residuewise thermal conductivity demonstrated distinct residue-type dependence: their values decreased in the order of charged, polar, and hydrophobic residues.

<!-- A very weak (or can be said no) relationship between local density and local thermal conductivity was observed. -->

<!-- # SUPPLEMENTARY MATERIAL
See supplementary material for residue volume, cross-correlation data, and regression analysis of residue-wise thermal conductivity. -->

## APPENDICES {-}

### APPENDIX A: Atomic Expression of Heat Current {-}
<!--
Renew counter of equations and set prefix "A".
If you have two or more appendix, reuse this and set "B" instead of "A".
-->
\setcounter{equation}{0}
\renewcommand{\theequation}{A\arabic{equation}}

The potential energy function, $V(\bm r_1, \cdots, \bm r_N)$ is usually defined as a function of atomic positions.
Alternatively, it can also be expressed as a function of the interatomic distances, $r_{ij} = |\bm r_{ij}| = |\bm r_i - \bm r_j |$, between all the atom pairs, $(i,j)$.
Then, the force acting on atom $i$ is obtained as a partial derivative of $V$ with respect to the position of atom $i$,

$$
\begin{aligned}
\mathbf F_i &= - \displaystyle \sum_{(k,j)} \frac{\partial V}{\partial r_{kj}}\nabla_i (r_{kj}) = \displaystyle \sum_{j(\ne i)} - \frac{\partial V}{\partial r_{ij}} \frac{\bm r_{ij}}{r_{ij}} \\ 
&= \sum_{j(\ne i)} \bm F_{ij}
\end{aligned}
$$
{#eq:eqA1}

, where $\nabla_i = (\partial / \partial \{\bm {r_i}\}_x, {\partial /\partial \{\bm r_i}\}_y, {\partial /\partial \{\bm r_i}\}_z)$.[@ishikura2012]

The time derivatives of the potential energy and the total energy respectively become:

$$
\frac{dV}{dt} =  \displaystyle \sum_{(i,j)} \frac{\partial V}{\partial r_{ij}} \frac{d\bm r_{ij}}{dt} = - \frac{1}{2} \sum_i^N \sum_j^N \bm F_{ij} \cdot (\bm v_i - \bm v_j)
$$
{#eq:eqA2}

and

$$
\begin{aligned}
\frac{dE}{dt} &= \displaystyle \sum_i^N \bm v_i \cdot \bm F_i + \frac{dV}{dt} \\ &= 
\sum_i^N \sum_j^N \frac{1}{2} \bm F_{ij} \cdot (v_i + v_j)
= \sum_i \frac{dE_i}{dt}
\end{aligned}
$$
{#eq:eqA3}
, where $E_i$ represents the per atom energy of atom $i$. Although the time derivative of $E_i$ can be calculated using the above formula, it is not practical to derive the explicit form of $E_i$ itself.

Consequently, the total heat current is obtained as follows:

$$
\begin{aligned}
\bm h &= 
\displaystyle \sum_i^N \bm r_i \frac{dE_i}{dt} = 
\sum_i^N\sum_j^N \mathbf r_i \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \\
&= \frac{1}{2}
\Biggl[ \sum_i^N\sum_j^N \bm r_i \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \\
&+ \sum_j^N\sum_i^N \bm r_j \left\{\frac {1}{2} \bm F_{ji} \cdot (\bm v_j + \bm v_j) \right\}
\Biggr] \\
&= \frac{1}{2} \sum_i^N\sum_j^N \bm (r_i - r_j) \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \\
&=
\sum_{(i,j)} \bm (r_i - r_j) \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \equiv \sum_{(i,j)} \bm h_{ij}
\end{aligned}
$$
{#eq:eqA4}
<!-- 
$$
\begin{aligned}
\bm h &= 
\displaystyle \sum_i^N \bm r_i \frac{dE_i}{dt} = 
\sum_i^N\sum_j^N \mathbf r_i \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \\
&= \frac{1}{2}
\left[ \sum_i^N\sum_j^N \bm r_i \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} + \sum_j^N\sum_i^N \bm r_j \left\{\frac {1}{2} \bm F_{ji} \cdot (\bm v_j + \bm v_j) \right\}
\right] \\
&= \frac{1}{2} \sum_i^N\sum_j^N \bm (r_i - r_j) \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \\
&=
\sum_{(i,j)} \bm (r_i - r_j) \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \equiv \sum_{(i,j)} \bm h_{ij}
\end{aligned}
$$
{#eq:eqA4} -->


, where we used $\bm F_{ij} = - \bm F_{ji}$.

### APPENDIX B: Derivation of Scalar Constants for Allocation of Cross-correlation Terms{-}
<!--
Renew counter of equations and set prefix "A".
If you have two or more appendix, reuse this and set "B" instead of "A".
-->
\setcounter{equation}{0}
\renewcommand{\theequation}{B\arabic{equation}}

It is required that the total weight of $\xi_{\alpha, \alpha+1}$ in @eq:eq13 should be one ([@fig:allocation]), i.e.,

$$
2u+2v+w=1
$$
{#eq:B1}

and if we assume that the influence of $\xi_{\alpha, \alpha+1}$ on $\Lambda_{\alpha, \alpha+1}$ is greater than that of either $\xi_{\alpha-1, \alpha}$ or $\xi_{\alpha+1, \alpha+2}$, and let

$$
2u=w.
$$
{#eq:B2}

In addition, if we assume that the total weight of $\xi_{\alpha-1, \alpha}, \xi_{\alpha, \alpha+1}, \xi_{\alpha+1, \alpha+2}$ in $\tilde\Lambda_{\alpha, \alpha+1}$ is equal to that of $\xi_{\alpha, \alpha+1}, \xi_{\alpha+1, \alpha+2}$ in $\tilde\Lambda_{\alpha+1, \alpha+1}$ $(\alpha=2, \cdots, N-2)$, then

$$
2u + w =  2v.
$$
{#eq:B3}

From @eq:B1, @eq:B2, and @eq:B3, we obtain $u=\frac{1}{8}$, $v=w=\frac{1}{4}$.
Accordingly, @eq:eq14 and @eq:eq15 become $\tilde\Lambda_{\alpha,\alpha} = \Lambda_{\alpha,\alpha} + \frac{1}{4}(\xi_{\alpha-1, \alpha} + \xi_{\alpha, \alpha+1})$, and $\tilde\Lambda_{\alpha, \alpha+1} \,=\, \Lambda_{\alpha, \alpha+1} + \frac{1}{4}\,\xi_{\alpha, \alpha+1} + \frac{1}{8}(\xi_{\alpha-1, \alpha} + \xi_{\alpha+1, \alpha+2} )$, respectively.

For the terminal residues, we assume that 

$$
\tilde\Lambda_{1,1} = \Lambda_{1,1} + v'\xi_{1,2}
$$
{#eq:B6}

$$
\tilde\Lambda_{1,2} = \Lambda_{1,2} + w'\xi_{1,2} + u \xi_{2,3}
$$
{#eq:B7}

$$
\tilde\Lambda_{N-1,N} = \Lambda_{N-1,N} + u\xi_{N-2,N-1} + w'\xi_{N-1,N}
$$
{#eq:B8}

$$
\tilde\Lambda_{N,N} = \Lambda_{N,N} + v'\xi_{N-1,N}.
$$
{#eq:B9}

Then, it is required that the total weight of $\xi_{1,2} (\xi_{N-1,N})$ in $\tilde\Lambda_{1,1}, \tilde\Lambda_{1,2}, \tilde\Lambda_{2,2}, \tilde\Lambda_{2,3}$ ($\tilde\Lambda_{N,N}, \tilde\Lambda_{N-1,N}, \tilde\Lambda_{N-1,N-1}, \tilde\Lambda_{N-2,N-1}$) is one, i.e.,

$$
v'+w'+v+u = 1.
$$
{#eq:B10}

Also, we assume that the weight $v'$ is greater than $u'$, and let

$$
w' = 2v'.
$$
{#eq:B11}
Accordingly, we obtain $v', w' = \frac{5}{24}, \frac{5}{12}$ from @eq:B10 and @eq:B11.


