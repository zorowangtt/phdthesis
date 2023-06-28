
\newpage
# Theory, Materials and Methods {#cha2}

## Thermal conductivity {#thermalcondivity}
According to the Green–Kubo relations, the steady-state transport coefficient can be obtained by dividing the space–time integral of the flux–flux equilibrium correlation function by k~B~T. A very detailed derivation process can be found in APPENDIX B: _Derivation of Green–Kubo Relation_ of book _Heat transfer physics_ by Massoud Kaviany.[@kaviany2008] Like other transport processes, e.g. viscosity, the thermal conductivity of the material can be derived from Green–Kubo relation and expressed in terms of the time autocorrelation function (ACF) of the heat current vector, $\bm{h}$, based on equilibrium fluctuation,

$$
\lambda = \frac {1} {3Vk_BT^2} \bm{\int_0^\infty} \left \langle \bm{h}(t) \cdot \bm{h}(0) \right \rangle dt,
$$
{#eq:eqc1}

where $\lambda$ is the thermal conductivity, $V$ is the volume, $k_B$ is the Boltzmann constant, $T$ is the absolute temperature, the angle brackets of $\langle \bm{h}(t) \cdot \bm{h}(0) \rangle$ denote ensemble average.[@mcquarrie2000]

Autocorrelation is a measure of how well a dynamic system's signature aligns with a time-shifted version of itself,
representing the cross-correlation of a signal with its own shifted counterpart.
In the case of thermal conductivity, the duration of autocorrelation is related to the material's ability to transfer heat and energy.
Materials with high thermal conductivity exhibit long-lasting correlation, indicating slow dissipation of fluctuations from equilibrium.
In contrast, materials with low thermal conductivity display short-lived correlation.
One important point is that the Green-Kubo approach allows for the calculation of transport properties from an equilibrium system, providing valuable insights even in non-equilibrium scenarios.

## Derivation of inter-atomic heat current{#sec:interatomicheatcurrent}

In this section, we have obtained an atomistic formulation for the heat current term of thermal conductivity expression (@eq:eqc1) in a molecular system.
The atomistic representation of the instantaneous heat current, denoted as $\bm{h}$, is derived by taking the time derivative of the energy distribution,[@yamato2022]

$$
  {\bm{h} }\equiv \frac{d}{dt} \bm{\sum}_{i=1}^N(E_i  \bm{\bm{r}_i})=\bm{\sum}_{i=1}^N { (E_i\frac{d\bm{r}_i}{dt} + \bm{r}_i} \frac{dE_i}{dt})
$$
{#eq:eqc2}

where $E_i$, $\bm{r}_i$ are per atom energy and the position vector of atom $i$, and $N$ is the total number of atoms.

The on the right-hand side of [@eq:eqc2] can be divided into two terms: the convective term and the virial term.
In the context of this equation, it is commonly recognized that the convective term plays a significant role in gaseous systems, but its contribution is minimal in solids.
On the other hand, the virial term is predominant in solids and biomolecular materials, such as proteins [@babaei2012].

The total energy ($E$) of a protein system, shown in @eq:eqc3, 
in classical molecular mechanics is calculated by summing the kinetic energy contributions from each atom,
which is determined by its mass ($m_i$) and momentum ($\bm{p}_i$),
and the potential energy term ($V(\bm{r}_1, \bm{r}_2, ..., , \bm{r}_N)$) that depends on the positions of all atoms ($\bm{r}_1, \bm{r}_2, ..., , \bm{r}_N$).

$$
  {E} = \bm{\sum}_{i=1}^N  \frac{\bm{p}_{i}^2} {2m_i} + V(\bm{r}_1, \bm{r}_2, ..., \, \bm{r}_N),
$$
{#eq:eqc3}

<!-- Alternatively, it can also be expressed as a function of the inter-atomic distances, $r_{ij} = |\bm r_{ij}| = |\bm r_i - \bm r_j |$, between all the atom pairs, $(i,j)$.
Then, the force acting on atom $i$ is obtained as a partial derivative of $V$ with respect to the position of atom $i$, -->

Alternatively, the potential energy term ($V(\bm{r}_1, \bm{r}_2, ..., , \bm{r}_N)$) of a protein system in classical molecular mechanics can also be expressed as a function of the inter-atomic distances ($r_{ij} = |\bm r_{ij}| = |\bm r_i - \bm r_j |$) between all pairs of atoms $(i,j)$.
In this representation, the force acting on atom $i$ is obtained by taking the partial derivative of $V$ with respect to the position of atom $i$.

$$
\begin{aligned}
\mathbf F_i = - \displaystyle \sum_{(k,j)} \frac{\partial V}{\partial r_{kj}}\nabla_i (r_{kj}) = \displaystyle \sum_{j(\ne i)} - \frac{\partial V}{\partial r_{ij}} \frac{\bm r_{ij}}{r_{ij}}
= \sum_{j(\ne i)} \bm F_{ij}
\end{aligned}
$$
{#eq:eqA1}

, where $\nabla_i = (\partial / \partial \{\bm {r_i}\}_x, {\partial /\partial \{\bm r_i}\}_y, {\partial /\partial \{\bm r_i}\}_z)$.[@ishikura2012]

The time derivatives of the potential energy ($V$) and the total energy ($E$) can be expressed as:

$$
\frac{dV}{dt} =  \displaystyle \sum_{(i,j)} \frac{\partial V}{\partial r_{ij}} \frac{d\bm r_{ij}}{dt} = - \frac{1}{2} \sum_i^N \sum_j^N \bm F_{ij} \cdot (\bm v_i - \bm v_j)
$$
{#eq:eqA2}

and

$$
\begin{aligned}
\frac{dE}{dt} = \displaystyle \sum_i^N \bm v_i \cdot \bm F_i + \frac{dV}{dt} = 
\sum_i^N \sum_j^N \frac{1}{2} \bm F_{ij} \cdot ( \bm v_i +  \bm v_j)
= \sum_i \frac{dE_i}{dt}
\end{aligned}
$$
{#eq:eqA3}
respectively, where $E_i$ denotes the per atom energy of atom $i$.
While it is possible to calculate the time derivative of $E_i$ using the formula provided, obtaining the explicit form of $E_i$ itself is not feasible in practice.

As a result, the total heat current can be obtained through the following derivation process:

$$
\begin{aligned}
\bm h &= 
\displaystyle \sum_i^N \bm r_i \frac{dE_i}{dt} = 
\sum_i^N\sum_j^N \mathbf r_i \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \\
&= \frac{1}{2}
\Biggl[ \sum_i^N\sum_j^N \bm r_i \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\}
+ \sum_j^N\sum_i^N \bm r_j \left\{\frac {1}{2} \bm F_{ji} \cdot (\bm v_j + \bm v_j) \right\}
\Biggr] \\
&= \frac{1}{2} \sum_i^N\sum_j^N  (\bm r_i - \bm r_j) \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \\
&=
\sum_{(i,j)}  (\bm r_i - \bm r_j) \left\{\frac {1}{2} \bm F_{ij} \cdot (\bm v_i + \bm v_j) \right\} \equiv \sum_{(i,j)} \bm h_{ij}
\end{aligned}
$$
{#eq:eqA4}

, where $\bm F_{ij} = - \bm F_{ji}$.

The time derivative of ${E_i}$ thus can be expressed as

$$
\frac{dE_i}{dt} = \bm{\sum}_{j(\neq{i})}^N \frac{1}{2} \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j}),
$$
{#eq:eqc4}

where $\bm{F}_{ij}$ is the force acting on atom $i$ due to atom $j$. 

Thus, we obtained atomistic expression for the heat current as

$$
\bm{h}=\bm{\sum}_{i=1}^N \bm{r}_i \frac{dE_i}{dt} =  \bm{\sum}_{i}^N \bm{r}_i \bm{\sum}_{j}^N  \{ \frac{1}{2} \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j})\}, 
$$
{#eq:eqc5}

with the inter-atomic heat current between atoms $i$ and $j$, $\bm{h_{ij}}$, denoted as

$$
{\bm{h_{ij}}} = ({\bm{r}_i}-{\bm{r}_j}) \{\frac{1}{2}  \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j})\}.
$$
{#eq:eqc6}

## Linear-homopolymer-like model
<!-- Local Thermal Transport -->

![Thermal transport through backbone model. Local heat currents, $\bm{h}_{\alpha, \alpha}$ and $\bm{h}_{\alpha, \alpha+1}$, occur within each residue $\alpha$ and between each pair of residues $\alpha$ and $\alpha+1$.](figures/cross/divided_model.jpeg){#fig:divided_model width=70%}

The inter-atomic heat current, as described in @eq:eqc6, provides insight into the essential biophysical nature of a protein molecule, i.e. its structure (${\bm{r}_i}-{\bm{r}_j}$), dynamics (${\bm{v}_i} + {\bm{v}_j}$) and interactions ($\bm{F}_{ij}$).
We expect that the local thermal transport of a highly non-uniform molecule such as proteins can be effectively illustrated by analyzing the ACF of the local heat current within individual residues and between pairs of residues.
It is well-known that amino acids serve as the fundamental building blocks of proteins.
Therefore, it would be advantageous if we could investigate the local thermal transport characteristics on a residue-by-residue basis.
The spatial scale of each residue is considerably smaller than the macroscopic level, and the local fluctuations within each residue  can be influenced by the surrounding protein environment.
As a result, we need a special care when discussing the local thermal transport property using the ACF formalism.

To address this issue, we have devised a two-stage strategy.
In the first stage, we have introduced a simple model ([@fig:divided_model]) that focuses on the thermal transport along the polypeptide chain.
This simple model allows us to analyze and understand the local thermal transport phenomena more effectively.
In the second stage ([@sec:method-cross-correlation]), we have carefully examined the theoretical consistency between the ACF formalism based on the local heat current and the ACF formalism based on the overall heat current.
As a result, we have derived correction terms that ensure the accuracy of the local heat current analysis.

In our previous study,[@yamato2022] we found that the thermal transport between the entire mainchain and each sidechain exhibited negligible magnitude and showed no significant positional dependence.
Additionally, our observations revealed that the thermal transport in a protein molecule predominantly takes place either along the polypeptide chain or within individual sidechains.
To better understand the thermal transport properties at the residue level,
we introduced a model comprising $N$ nodes representing the residues, as depicted in [@fig:divided_model].
Here, $N$ denotes the total number of residues in the protein.
Within this model, we assumed the occurrence of heat currents within each residue as well as between adjacent residue pairs along the sequence,
while long-range heat currents between residue pairs in nonbonded contacts were neglected.
Then, the total heat current can be represented as a summation of the partial heat currents:

$$
\bm {h} = \bm{\sum}_{\alpha = 1}^{N} \bm{h}_{\alpha, \alpha} + \bm{\sum}_{\alpha = 1}^{N-1} \bm{h}_{\alpha, \alpha+1}
$$
{#eq:eqc7}

Here, $\bm{h}_{\alpha, \alpha}$ represents the intra-residue heat current within residue $\alpha$, which is the sum of heat currents between all pairs of atoms $i$ and $j$ within a single residue ($\bm{\sum}_{i}^{n_\alpha} \bm{\sum}_{j}^{n_\alpha} \bm{h}_{ij}$). Similarly, $\bm{h}_{\alpha, \alpha+1}$ represents the inter-residue heat current between a pair of adjacent residues $\alpha$ and $\alpha+1$, calculated as the sum of heat currents between all atoms $i$ in residue $\alpha$ and all atoms $j$ in residue $\alpha+1$ ($\bm{\sum}_{i}^{n_\alpha} \bm{\sum}_{j}^{n_{\alpha+1}} \bm{h}_{ij}$).

In order to characterize the residuewise thermal transport property, we introduced several quantities: $\Lambda_{\alpha, \alpha}$, $\Lambda_{\alpha, \alpha+1}$, and $\Lambda$.
These quantities are defined as the time-integrated autocorrelation functions (ACFs) of the partial heat currents within a residue ($\Lambda_{\alpha, \alpha}$), between adjacent residues ($\Lambda_{\alpha, \alpha+1}$), and for the total heat current ($\Lambda$), respectively,

$$
\begin{aligned}
\Lambda_{\alpha, \alpha} = \bm{\int} \langle \bm{h}_{\alpha,\alpha}(t) \cdot \bm{h}_{\alpha,\alpha}(0) \rangle dt \\
\Lambda_{\alpha, \alpha+1} = \bm{\int} \langle \bm{h}_{\alpha, \alpha+1}(t) \cdot \bm{h}_{\alpha, \alpha+1}(0) \rangle dt
\end{aligned}
$$
{#eq:eqc8}

$$
\Lambda  = \bm{\int} \langle \bm{h}(t) \cdot \bm{h}(0) \rangle dt 
$$
{#eq:eqc9}

The contribution of the partial heat current, $\bm{h}_{\alpha,\beta}$, to the overall thermal transport property of the molecule can be expressed using a contribution factor, denoted as $c$,

$$
c(\alpha,\beta) \equiv \Lambda_{\alpha, \beta} / \Lambda
$$
{#eq:eqc10}

## Cross-correlation correction on linear-homopolymer-like model {#sec:method-cross-correlation}

To illustrate why we need to take into account the cross-correlation in the linear-homopolymer-like model, we use a hypothetical dipeptide composed of residues A and B as an example.
The thermal conductivity, denoted as $\lambda$, of the molecule can be determined by calculating the heat current ($\bm h$) autocorrelation function, $\langle\bm h(0) \cdot \bm h(t)\rangle$.
Based on [@eq:eqc6], $\bm h$ can be expressed as the sum of three components: $\bm h_{\rm A}$, $\bm h_{\rm B}$, and $\bm h_{\rm AB}$.
The first two components represent the heat currents occurring within residues A and B, respectively, while the third component, $\bm h_{\rm AB}$, corresponds to the heat current between residues A and B.

Considering the non-uniform heat flow in the dipeptide, we need to calculate the local thermal conductivities, denoted as $\lambda_A$, $\lambda_{\rm B}$, and $\lambda_{\rm AB}$, independently for each of the three parts.
This can be achieved by calculating the heat current autocorrelation functions $\langle\bm h_{\rm A}(0) \cdot \bm h_{\rm A}(t)\rangle$, $\langle\bm h_{\rm B}(0) \cdot \bm h_{\rm B}(t)\rangle$, and $\langle\bm h_{\rm AB}(0) \cdot \bm h_{\rm AB}(t)\rangle$.
In an ideal case where $\bm h_{\rm A}$, $\bm h_{\rm B}$, and $\bm h_{\rm AB}$ fluctuate independently, we can neglect the cross-correlation terms between them. Thus, we have $\langle\bm h(0) \cdot \bm h(t)\rangle = \langle\bm h_{\rm A}(0) \cdot \bm h_{\rm A}(t)\rangle + \langle\bm h_{\rm B}(0) \cdot \bm h_{\rm B}(t)\rangle + \langle\bm h_{\rm AB}(0) \cdot \bm h_{\rm AB}(t)\rangle$.
Finally, we can obtain the value of $\lambda$ by combining the calculated values of $\lambda_{\rm A}$, $\lambda_{\rm B}$, and $\lambda_{\rm AB}$.

In reality, however, strong interactions exist between residues A and B through the peptide bonding, leading to non-negligible cross-correlations.
These cross-correlations are represented by $\langle\bm h_{\rm A}(0) \cdot \bm h_{\rm B}(t)\rangle$, $\langle\bm h_{\rm A}(0) \cdot \bm h_{\rm AB}(t)\rangle$, and $\langle\bm h_{\rm B}(0) \cdot \bm h_{\rm AB}(t)\rangle$.
As a result, the value of $\lambda$ cannot be accurately reconstructed using only $\lambda_{\rm A}$, $\lambda_{\rm B}$, and $\lambda_{\rm AB}$.
In this analysis, it is essential to consider the influence of these cross-correlations in order to obtain effective local thermal conductivities that accurately characterize the non-uniform thermal transport property of proteins.
Thus, by incorporating the cross-correlations, we aim to derive the mathematical expression of the local thermal conductivities that are consistent with the overall thermal conductivity of the entire molecule.

The analysis of the local thermal transport property using @eq:eqc8 leads to a problem: when dividing the overall heat current into the summation of partial heat currents (@eq:eqc7), @eq:eqc9 includes both autocorrelation and cross-correlation terms, while the cross-correlation terms, $\langle\bm{h}{\alpha, \beta}(0) \cdot \bm{h}{\alpha', \beta'}(t)\rangle$ with $(\alpha, \beta) \ne (\alpha', \beta')$, are missing in equation (8).
As a result, we anticipate that the summation of all contribution factors, $\sum_{\alpha=1}^{N} c_{\alpha, \alpha} + \sum_{\alpha=1}^{N-1} c_{\alpha, \alpha+1}$, does not equal unity. If this summation is greater (or less) than 1, it implies that the average intensity of the local thermal transport is overestimated (or underestimated) compared to its actual value.

![Short-range cross-correlation approximation. Cross-correlations are considered only for nearby pairs (dashed line).](figures/cross/cross-correlation.jpeg){#fig:cross-correlation width=70%}

To address this issue, we explored the role of cross-correlations in this section.
We made the assumption that the local fluctuation of thermal transfer at a particular site in a protein is not influenced by that at another distant site.
Based on this assumption, we introduced a short-range cross-correlation approximation, shown in [@fig:cross-correlation].
In order to evaluate these cross-correlations, it is useful to define a "dimer" as a pair of adjacent residues, $\alpha$ and $\alpha+1$ ($\alpha = 1, \cdots, N-1$),
and introduce the concept of intra-dimer heat current, denoted as $\bm{h}_{\{\alpha, \alpha+1 \}, \{ \alpha, \alpha+1 \}}$.
The cross-correlation between residues $\alpha$ and $\alpha+1$, denoted as $\xi$, can then be expressed as shown by the red dashed line in [@fig:cross-correlation],

$$
\begin{split}
\xi_{\alpha, \alpha+1} = \Lambda_{\{\alpha,\alpha+1\}, \{\alpha,\alpha+1\}} - 
(\Lambda_{\alpha, \alpha} +  \Lambda_{\alpha, \alpha+1}+\Lambda_{\alpha+1, \alpha+1})
\end{split}
$$
{#eq:eqc11}

$$
\begin{split}
\Lambda_{ \{\alpha, \alpha+1\}, \{\alpha, \alpha+1\} } = 
\bm{\int} \langle \bm{h}_{ \{\alpha, \alpha+1\},  \{\alpha, \alpha+1\} }(t) \cdot \bm{h}_{ \{\alpha, \alpha+1\} ,  \{\alpha, \alpha+1\} }(0) \rangle dt
\end{split}
$$
{#eq:eqc12}

Next, we derived correction terms for $\Lambda_{\alpha, \alpha}$ and $\Lambda_{\alpha, \alpha+1}$ in order to obtain their corrected counterparts, $\tilde\Lambda_{\alpha, \alpha}$ and $\tilde\Lambda_{\alpha, \alpha+1}$.
The goal was to ensure that the summation of these corrected terms, $\tilde\Lambda_{\alpha, \alpha}$ $(\alpha = 1, \cdots, N)$ and $\tilde\Lambda_{\alpha, \alpha+1}$ $(\alpha=1, \cdots, N-1)$, approaches the value of $\Lambda$. In other words, we aimed to achieve the condition:

$$
\Lambda \simeq \sum_{\alpha = 1}^{N} \tilde\Lambda_{\alpha, \alpha} + \sum_{\alpha = 1}^{N-1} \tilde\Lambda_{\alpha, \alpha+1},
$$
{#eq:eqc13}

Based on the short-range cross-correlation assumption, we assumed that the influence of $\xi_{\alpha, {\alpha+1}}$ is limited to $\Lambda_{\alpha-1, \alpha}, \Lambda_{\alpha, \alpha}, \Lambda_{\alpha, \alpha+1}, \Lambda_{\alpha+1, \alpha+1}$, and $\Lambda_{\alpha+1, \alpha+2}$ (see [@fig:allocation]), we derived a model where the contribution of $\xi_{\alpha, \alpha+1}$ to ($\tilde\Lambda_{\alpha-1, \alpha}$ and $\tilde\Lambda_{\alpha+1, \alpha+2}$), ($\tilde\Lambda_{\alpha, \alpha}$ and $\tilde\Lambda_{\alpha+1, \alpha+1}$), and ($\tilde\Lambda_{\alpha, \alpha+1}$) is represented by $u\xi_{\alpha, \alpha+1}$, $v\xi_{\alpha, \alpha+1}$, and $w\xi_{\alpha, \alpha+1}$, respectively, where $u, v, w$ are scalar constants as shown in [@fig:allocation].
Then, we obtained a pair of equations for $\tilde\Lambda_{\alpha, \alpha}$ and $\tilde\Lambda_{\alpha, \alpha+1}$ as follows:

$$
\tilde\Lambda_{\alpha,\alpha} = \Lambda_{\alpha,\alpha} +v (\xi_{\alpha-1, \alpha} + \xi_{\alpha, \alpha+1})
$$
{#eq:eqc14}

$$
\tilde\Lambda_{\alpha, \alpha+1} = \Lambda_{\alpha, \alpha+1} + w \xi_{\alpha, \alpha+1} + u(\xi_{\alpha-1, \alpha} + \xi_{\alpha+1, \alpha+2})
$$
{#eq:eqc15}

![Allocation of cross-correlation term](figures/cross/allocation_principle.jpeg){#fig:allocation width=70%}

Let us introduce three $N \times N$ matrices: $\{\bm{\Lambda}_{\alpha, \beta}\} = \Lambda_{\alpha, \beta}$, $\{\bm{\tilde\Lambda}\}_{\alpha, \beta} = \tilde\Lambda_{\alpha, \beta}$, and $\{\bm{\xi}_{\alpha, \beta}\} = \xi_{\alpha, \beta}$, where $\bm{\xi}$ is symmetrized, i.e., $\xi_{\alpha+1, \alpha} = \xi_{\alpha, \alpha+1}$ for $(\alpha = 1, 2, \cdots, N-1)$.
Using these matrices, we can express $\bm{\tilde\Lambda}$ by the following equation:

$$
\bm{\tilde\Lambda} = \bm{\Lambda} + \bm{T} \bm{\xi} + \bm{\xi} \bm{T},
$$
{#eq:eqc16}

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
{#eq:eqc17}

$$
\bm{T} = \frac{w}{2}\bm{I} + v\bm{T}_1 + u\bm{T}_2,
$$
{#eq:eqc18}

where $\bm{I}$ is the $N \times N$ identity matrix.

The values of $u, v, w$ were derived as follows.
First, the total weight of $\xi_{\alpha, \alpha+1}$ in @eq:eqc13 should be one, as shown in @fig:allocation. Therefore, we have the following equation:

$$
2u+2v+w=1
$$
{#eq:B1}

Next, we expect that the influence of $\xi_{\alpha, \alpha+1}$ on $\Lambda_{\alpha, \alpha+1}$ can be greater than that of either $\xi_{\alpha-1, \alpha}$ or $\xi_{\alpha+1, \alpha+2}$, and we introduce an arbitrary assumption:

$$
2u=w
$$
{#eq:B2}

Also, we assume that the total weight of $\xi_{\alpha-1, \alpha}, \xi_{\alpha, \alpha+1}, \xi_{\alpha+1, \alpha+2}$ in $\tilde\Lambda_{\alpha, \alpha+1}$ is equal to the total weight of $\xi_{\alpha, \alpha+1}, \xi_{\alpha+1, \alpha+2}$ in $\tilde\Lambda_{\alpha+1, \alpha+1}$ for $\alpha=2, \cdots, N-2$, then we can express the relation as follows:

$$
2u + w = 2v
$$
{#eq:B3}

From @eq:B1, @eq:B2, and @eq:B3, we obtain $u=\frac{1}{8}$, $v=w=\frac{1}{4}$.
Accordingly, @eq:eqc14 and @eq:eqc15 become $\tilde\Lambda_{\alpha,\alpha} = \Lambda_{\alpha,\alpha} + \frac{1}{4}(\xi_{\alpha-1, \alpha} + \xi_{\alpha, \alpha+1})$, and $\tilde\Lambda_{\alpha, \alpha+1} \,=\, \Lambda_{\alpha, \alpha+1} + \frac{1}{4}\,\xi_{\alpha, \alpha+1} + \frac{1}{8}(\xi_{\alpha-1, \alpha} + \xi_{\alpha+1, \alpha+2} )$, respectively.

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
\tilde\Lambda_{N,N} = \Lambda_{N,N} + v'\xi_{N-1,N}
$$
{#eq:B9}

Then, it is necessary for the total weight of $\xi_{1,2} (\xi_{N-1,N})$ in $\tilde\Lambda_{1,1}, \tilde\Lambda_{1,2}, \tilde\Lambda_{2,2}, \tilde\Lambda_{2,3}$ ($\tilde\Lambda_{N,N}$, $\tilde\Lambda_{N-1,N}$, $\tilde\Lambda_{N-1,N-1}$, $\tilde\Lambda_{N-2,N-1}$) to be equal to one.
In other words, we have the following equation:

$$
v'+w'+v+u = 1.
$$
{#eq:B10}

Additionally, we assume that the weight $v'$ is greater than the weight $u'$, and we introduce the following relation:
$$
w' = 2v'.
$$
{#eq:B11}

As a result, we obtain the values of $v'$ and $w'$ as $\frac{5}{24}$ and $\frac{5}{12}$ respectively, based on equations @eq:B10 and @eq:B11.

In summary, the values of $u, v, w$ in @eq:eqc18 are $\frac{1}{8}, \frac{1}{4}, \frac{1}{4}$, respectively.
To account for the terminal effects, we separately evaluated $\tilde\Lambda_{1, 1}$, $\tilde\Lambda_{1, 2}$, $\tilde\Lambda_{N-1, 1}$, and $\tilde\Lambda_{N, N}$ using @eq:eqc14 and @eq:eqc15 with values of $v'$ and $w'$ as $\frac{5}{24}$ and $\frac{5}{12}$ respectively, instead of using $v = w = \frac{1}{4}$.

We defined the contribution factor after cross-correlation correction as follows,

$$
\tilde c_{\alpha,\beta} \equiv \frac{\tilde{\Lambda}_{\alpha, \beta}} {\Lambda}
$$
{#eq:eqc19}

All of the heat currents and their autocorrelation function calculations were performed using our CURP program, version 1.3[@yamato2022] based on 50 trajectories of _NVE_ molecular dynamics simulations, each of which started from the last step of different sampling trajectory in isotherma-isobaric _NPT_ ensemble at _T_ =300 K and _P_ = 1 atm.

## Inter-residue heat current analysis

Considering the molecular functional importance of nonbonded native contacts in a folded protein,
it would be helpful to analyse the thermal energy transfer through such native contacts.
We first derive atomistic expression of heat current for a molecular system based on linear response theory, and the derivation process is detailed in @sec:interatomicheatcurrent.
The inter-atomic heat current between atoms $i$ and $j$ in a molecule, denoted as $\bm{h_{ij}}$, can be expressed as:
$$
{\bm{h_{ij}}} = ({\bm{r}_i}-{\bm{r}_j}) \{ \frac{1}{2} \bm{F}_{ij} \cdot ({\bm{v}_i} + {\bm{v}_j} )\}
$$
{#eq:eqd1}
<!-- prettier-ignore-end -->

where $\bm{F}_{ij}$ is the force acting on atom $i$ from atom $j$, ${\bm{r}_i}$(${\bm{r}_j}$) and ${\bm{v}_i}$ (${\bm{v}_j}$) are positional vector and velocity of atom $i$($j$).

<!-- For a protein containing $N$ amino acid residues, the entire protein can be divided into $N$ segments in terms of residues, then the total heat current, $\bm{h}$, can be expressed by a sum of partial heat current: $\bm{h} = \sum_{\alpha=1}^{N} \bm{h_{\alpha}}$. -->

Then, the heat current between residue $\alpha$ and $\beta$ can be expressed as:

<!-- prettier-ignore-start -->
$$
\bm{h}_{\alpha, \beta} = \bm{\sum}_{i\in\alpha}\bm{\sum}_{j\in\beta}\bm{h_{ij}}
$$
{#eq:eqd2}
<!-- prettier-ignore-end -->

By using the following quantity:
$$
\Lambda_{\alpha, \beta} = \bm{\int} \langle \bm{h}_{\alpha, \beta}(t) \cdot \bm{h}_{\alpha, \beta}(0) \rangle dt
$$
{#eq:eqd3}
<!-- prettier-ignore-end -->

the inter-residue thermal conductivity, $\lambda_{{\alpha, \beta}}$, can be expressed as,
$$
\lambda_{\alpha, \beta} = \frac {1} {3(V_{\alpha}+V_{\beta})k_BT^2} \bm{\int} \langle \bm{h}_{\alpha, \beta}(t) \cdot \bm{h}_{\alpha, \beta}(0) \rangle dt = \frac{\Lambda_{\alpha, \beta}}{3(V_{\alpha}+V_{\beta})k_BT^2}
$$
{#eq:eqd4}
where $V_{\alpha}$($V_{\beta}$) is the volume of residue $\alpha$($\beta$), $k_B$ is the Boltzmann constant, $T$ is the absolute temperature.

## Inter-residue energy flow analysis

The atomistic representation of the instantaneous  energy flow ($J$) between two atoms in a molecule, $i$ and $j$, can be expressed by: 

<!-- prettier-ignore-start -->
$$
J_{ij} = \frac{1}{2} (\bm{v}_i \cdot {\bm{F}_{ij}} - {\bm{v}_j} \cdot \bm{F}_{ji}) = \frac{1}{2} {\bm{F}_{ij}} \cdot ({\bm{v}_i + \bm{v}_j})
$$
{#eq:eqd5}
<!-- prettier-ignore-end -->

where $J_{ij}$ is the inter-atom energy flow between atom i and atom j.

Then, the energy flow between residue $\alpha$ and $\beta$ can be expressed as:

<!-- prettier-ignore-start -->
$$
J_{\alpha, \beta} =  \bm{\sum}_{i\in\alpha}\bm{\sum}_{j\in\beta}J_{ij}
$$
{#eq:eqd6}

Here, we introduced a transport coefficient-like quantity, _energy conductivity_, donated as $G_{\alpha,\beta}$, to measure the amount of energy transferred per unit of time between two residues through native contacts.

<!-- prettier-ignore-start -->
$$
G_{\alpha, \beta} = \bm{\int} \langle J_{\alpha, \beta}(t) J_{\alpha, \beta}(0) \rangle dt
$$
{#eq:eqd7}

From [@eq:eqd1] and [@eq:eqd4], we can see that the relationship between atomistic heat current and energy flux is: 

$$
\bm{h}_{ij} = ({\bm{r}_i}-{\bm{r}_j})J_{ij}
$$
{#eq:eqd8}

In this study, the integration time of the autocorrelation function for both heat current and energy flux was set as 60 ps.
All calculations of $\lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$ between each pair of residues in native contact using the _CURrent calculations in Proteins_ (CURP) program of version 1.3 developed by our lab.[@yamato2022]

## Parameterization of the Fe^3+^ metal cofactor{#sec:parameterization}

![Molecules used to obtain the tuned force field parameters for met-FixLH dimer system. (a) Molecule used in Gaussian optimization calculations to obtain the Fe^3+^ metal associated bond and angle parameters. (b) Molecule used used in Gaussian RESP partial charge calculations to obtain the partial charges for the metal site.](figures/fixl/met-fixl-force-field.jpg){#fig:met-fixl-force-field}

![Molecules used to obtain the tuned force field parameters for met-FixLH-imd dimer system. (a) The molecule used in Gaussian optimization calculations to obtain the Fe^3+^ metal associated bond and angle parameters. (b) The molecule used in Gaussian RESP partial charge calculations to obtain the partial charges for the metal site.](figures/fixl/met-fixl-imd-force-field.jpg){#fig:met-fixl-imd-force-field width=100%}

To investigate the interplay between allosteric signal transduction and the thermal energy transfer in the oxygen sensor domain of _Bj_FixL proteins.
We conducted the MD simulation.
The force-field parameters of the non-standard part of dimeric FixLHs were
generated using MCPB.py module[@li2016;@li2017] of AmberTools 15.
A small model and a large model of two dimeric FixLH proteins generated from
MCPB.py (@fig:met-fixl-force-field: met-FixLH, @fig:met-fixl-imd-force-field: met-FixLH-imd) were used to obtain the Fe^3+^ metal associated bond and angle parameters and generate the atomic partial charges for the metal site, respectively.
The small model consists of heme, the coordinated sidechains of the
proximal H200 with/without ligand. In the large model, the coordinated
sidechain has its free N- and C- termini capped with N-methyl (NME) and
acetyl groups (ACE) to mimic the protein backbone. Optimization and
force constant calculations for the small model and the Merz-Kollman
RESP charge calculations for the large model were performed using
Gaussian 16 package with the B3LYP/6-31G(d) level of
theory[@goerigk2011;@sousa2007a] and the ultrafine grid. Fe^3+^ with spin state S=5/2 and
S=1/2[@edler2014] were used in Gaussian calculations for met-FixLH and
met-FixLH-imd protein, respectively (@tbl:quantumcalculation).
  
|               | Spin=2              | Spin=4        | Spin=6         |
| :------------ | :------------------- | :------------ | :--------------- |
| Met-Heme      | -3402.1853060                  | -3402.1959457 | \textcolor{red}{-3402.1976629} |
| Imdazole-Heme | \textcolor{red}{-3627.8693349} |               | -3627.8189808                  |

: Quantum calculation results of met-FixLH and met-FixLH-IMD. Hart Fork Energy (unit: a.u.) comparison among different spin states of met-FiLH and met-FixLH-IMD. {#tbl:quantumcalculation}

## Equilibrium molecular dynamics simulations

The procedures of MD simulations for heat current and energy flow calculations on HP36 in @sec:cha3 and @sec:cha4, and on two *Bj*FixLs proteins in @sec:cha5 were described in this chapter.
All molecular simulations in @sec:cha3, @sec:cha4, and @sec:cha5 were performed by Amber 19 package.[@d.a.case2019]

### Systems setup
(1) HP36 system

The structure of villin headpiece protein (HP36) was obtained from the protein data bank and its PDB code is 1VII, which was determined by the nuclear magnetic resonance (NMR) technique.[@mcknight1997]
To reproduce the vibrational energy transfer accurately along the polypeptide chain, 
we used a small time step, $\Delta t$ = 0.5 fs, for MD simulations for generating time series of the heat current and energy flow.
Thus, we keep the system size as small as possible in this study.
The HP36 protein molecule was placed in an octahedral solvent box containing 2329 water molecules of the TIP3P model,[@mark2001;@price2004] using the LEaP program of AmberTools 19.
All charged residues were considered in their standard protonation state at pH = 7.0.
Amber ff19SB force field functions[@tian2020] were used for the protein atoms.
Four chloride and two sodium ions were added to neutralize the simulation box.
For efficient long-range electrostatic calculations, the particle mesh Ewald (PME) method was used under periodic boundary conditions.

(2) *Bj*FixL systems

We constructed two models of ferric FixLH dimer, (a) the ligand-free state (met-FixLH) and (b) the imidazole-bound state (met-FixLH-imd), based on the X-ray crystallographic structure of FixL dimer.
It is known that the deletion of the transmembrane region from *Rm*FixL, which corresponds to the PAS-A domain of *Bj*FixL, gives rise to no significant defect in the signaling functions.[@shiro2002]
Besides, the A’α and Jα helices are involved in the formation of the dimer interface, and considering the potential influence of the *Bj*FixLHs dimer interface on the signaling process.
Thereby, we considered 142 residues from E128 to L269 in the subsequent MD simulations.

For both protein structures, the N- and C-
termini were capped with uncharged ACE (acetyl) and NME (N-methylamine)
groups, respectively. For both systems, we modeled the histidines H235
and H259 (H144, H150, H162, H200, H214) as neutral forms with each
epsilon (delta) nitrogen protonated. All other residues were considered
in their standard protonation state at pH = 7.0. The systems were
solvated with the TIP3P[@price2004] water molecules in a periodic cubic box and sodium ions were used to neutralize the systems, then, additional Na
and Cl ions were added to achieve a salt concentration of \~ 0.15 M.
Each solvated system contains about \~ 60, 000 atoms.

The Amber ff14SB force field[@maier2015] was used to model the standard residues of the proteins except for H200.
Quantum calculations were performed to tune the force field to model the heme, ligands, and H200 and calculation details were described in @sec:parameterization.
The long-range electrostatic interactions were treated with the particle mesh Ewald method[@essmann1995] and nonbonded particle-particle interactions[@duan2001] were considered using a 9.0 Å cutoff. The time step for all MD simulations was set as 2.0 fs and SHAKE was used to constrain hydrogens for production run MD simulations.
To prevent the dissociation of A'α helices, a harmonic restraint with a spring constant of 10 kcal/mol·Å^2^ was applied to the bond between two CA atoms of residue I128 of chain A and chain B.

### Minimization

The periodic boundary condition was applied to all simulation systems.
Nonbonded particle-particle interactions[@cornell1995] were taken into account using a distance cutoff of 9 Å, and long-range electrostatic interactions were handled using the particle mesh Ewald (PME) method [@sagui2004].

The energy minimization of simulation systems contains three steps, (1) fixing all the heavy atoms and only relaxing hydrogen atoms, (2) optimizing the side-chain atoms with positional restraints of 99.9 (kcal/mol)/Å^2^ on the backbone atoms (N, Cα, C, O), (3) the positions of the main chain atoms were optimized with positional restraints of 2.0 (kcal/mol)/Å^2^. After that, a Maxwell-Boltzmann distribution of initial atomic velocities was generated at 0.1 K and each system was heated from 0.1 to 300 K for 50 ps by performing constant temperature, constant volume (_NVT_) MD simulations with the relaxation time of 0.1 ps and a positional restraint of 2.0 (kcal/mol)/Å^2^ on the backbone atoms.
With the same positional restraints, a 50-ps _NVT_ MD simulation was performed at _T_ = 300 K, followed by a 200 ps Langevin MD simulation at _T_ = 300 K with a collision frequency of 2.0 ps^-1^ with positional restraints switched-off.

### Equilibration
We started five (twenty) independent MD simulations from the minimum-energy conformation of HP36 (each of the *Bj*FixL) system, with different Maxwell-Boltzmann velocity distributions at _T_ = 0.1 K, while keeping positional restraints imposed on the mainchain atoms.
Subsequently, the system temperature was gradually increased from 0.1 to 300 K.
We, then, continued constant temperature, constant volume (_NVT_) MD simulation at $T$ = 300 K for 200 ps without positional restraints.
The thermal equilibrium of the system was achieved by using the constant temperature, constant pressure (_NPT_) MD simulation at $T$ = 300 K, $P$ = 1 atm for another 700 ps.

### _NPT_ sampling and _NVE_ MD simulations

Next, for the HP36 system, we continued 5 independent _NPT_ MD simulations for 56 ns, including a 50-ns run with a time step, $\Delta t$, of 2 fs with SHAKE constraints imposed on the bonds involving hydrogen atoms, 1-ns run with a time step of 0.5 fs with SHAKE constraints switched off only for the protein part.
We, then, continued another 5-ns run with the same condition for conformational sampling.
During the last 5-ns trajectories of the five independent _NPT_ MD simulations, we saved snapshots with atomic coordinates and velocities every 500 ps.
We thus obtained 50 different initial conditions, each of which was used for the subsequent constant volume, constant energy (_NVE_) MD simulation for 1 ns with a time step of 0.5 fs.
During these _NVE_ MD simulations, we saved atomic velocities every 0.5 fs, while atomic coordinates were saved every 1 fs.

For *Bj*FixL systems, 20 independent _NPT_ MD simulations were performed for 55 ns at conditions of T = 300 K and P = 0.978 atm, to conduct the conformational samplings. From the last 5-ns trajectory of each _NPT_ simulation, 10 snapshots with their atomic coordinates and velocity information were saved every 0.5 ns.
The atomic coordinates and velocities of _NVE_ MD simulations were saved every 10 fs for further calculations of energy flow and its autocorrelation function of residue pairs in native contacts.

## Definition and classification of nonbonded contacts {#sec:definitions}
### Definition

To describe the intramolecular interaction networks in proteins, the protein contact networks (PCNs) [@dipaola2013;@dipaola2015;@dipaola2022] have been introduced, aiming to unravel the relationship between protein structure and function.
In PCNs, two residues whose alpha-carbon atoms (CA) are within 4-8 Å of each other are considered to have contacts and interactions.
In this study, we defined nonbonded contacts based on a geometric criterion where residue pairs with the nearest atom distance of 7 Å or less were considered to have a significant role in heat and energy transport, as the thermal transport becomes negligible for pairs separated farther than this threshold.
A total of 269 residue pairs in HP36 were selected using the _pickup-respairs_ module of CURP 1.3.

### Classification

The nonbonded contacts among residues are categorized into five types based on the geometric structure of HP36 and MD simulation trajectories: hydrogen bond contacts, $\pi$ stacking contacts between aromatic side chains, electrostatic contacts for both residues that are charged or polar, and hydrophobic contacts for either of them being hydrophobic residue.
Hydrogen bond contacts are identified from MD simulation trajectories by the _cpptraj_ module of AmberTools 19, with a geometric criterion, i.e., the distance between atom $i$ and atom $j$ from a pair of shorter than 3.0 Å and the angle $i$-H...$j$ or $j$-H...$i$ within 145-180$^\circ$. Here, $i(j)\in$ residue A (B), and $i(j)$ is either O or N atom in protein.
On the other hand, $\pi$ stacking contacts are identified using the RING3.0 server ([https://ring.biocomputingup.it](https://ring.biocomputingup.it)) based on the NMR structure of HP36.

## Hydrogen bond occurrence probability
The hydrogen bonds are found to facilitate the thermal transport in helices-constructed material.[@mino2014;@he2021] 
To quantitatively characterize the strength of hydrogen bonds, we assessed their integrity during the simulation process by calculating the lifetime of detected hydrogen bond and term it into hydrogen bond occurrence probability (_P_~HB~).
The _cpptraj_ module in AMBER was utilized to probe hydrogen bonds between residues and their lifetime in the simulation.
The hydrogen bonds definition and screening criterion is same as that in @sec:definitions.
The hydrogen bonds occurrence probability can be calculated by the following formula:

$$
P_{\rm HB} = \frac {\sum_{i=1}^{N} n_i}{N}
$$
{#eq:eqd9}

where _P_~HB~ is the probability of hydrogen bond occurrence probability between residue $\alpha$ and residue $\beta$ during a certain simulation time with $N$ snapshots, $n_i$ is the number of hydrogen bonds formed between residue A and B.

## Random forest regression
The random forest regression model was applied to predict the $\lambda_{\alpha,\beta}$ by using sklearn's _RandomForestRegressor_ function in Python.
The $\lambda_{\alpha,\beta}$ values were considered as the target variable and seven protein static
and dynamical properties were considered as explanatory variables: inverse of contact (shortest) distance ($\langle d_c \rangle$), $P_{HB}$, the inverse of variance in the contact distance ($\langle \delta d_{c}^2 \rangle$), the summation volume of contacts $V_{\alpha\beta}$, residue type (RT$_\alpha$ and RT$_\beta$), and interaction type (IT).
The whole dataset was split into two groups for model fitting and evaluation: training set (80%) and testing set (20%).
The mean absolute error (MAE) loss was calculated for the split quality measurement.
The bootstrapping method was used to randomly sample the subsets of the training dataset to build the model.
The random forest regression model (estimator) performance is affected by the choice of its hyperparameters, such as the number of decision trees and the maximum number of splits for each decision tree.
To improve the accuracy of predictions and avoid underfit or overfit problems, the _RandomizedSearchCV_ function in the scikit-learn library was used to tune the hyperparameters and to obtain the best estimator.
R^2^ and root-mean-squared error (RMSE) for the training data set and for the testing data set were calculated to evaluate the model performance.
Due to the explanatory variables containing categorical data, for example, _interaction type_ and _residue type_,
we applied the _LabelEncoder_ function of Python to give a unique integer to each categorical explanatory variable for regression.
The feature importance for all explanatory variables was evaluated using permutation feature importance rather than impurity-based feature importance to avoid misleading for high cardinality features.

Although we screened residue pairs with a distance threshold of 6 $\AA$ by a built-in tool of using CURP program, a strict screening standard of 4 $\AA$ was used to construct a smaller data set for regression model building.
The motivation of a smaller group of contacts is that "4 $\AA$" as a lower limit for negligible interactions screening standard corresponds to the average value of the peptide bond length the nonbonded contacts in graph theory protein contact network[@dipaola2013].
Thus, in this section, we built two random forest models for two datasets: one is that $\langle d_c \rangle$ values are lower than 6 $\AA$, called _dataset L_, and the other is that $\langle d_c \rangle$ values are lower than 4 $\AA$, called _dataset S_.

<!-- ## Network models

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
{#eq:eqd10}

where $V$ represents either $w_{\alpha,\beta}$, $\log{G}_{\alpha, \beta}$, or $\log{\lambda}_{\alpha, \beta}$. -->

## Computational modeling for a homodimer _Thalassosira pseudonana_ CP12

We developed a three-stage modeling technique keeping in mind the considerable conformational flexibility and spatiotemporal heterogeneity of the _Thalassosira pseudonana_ chloroplast protein (CP12).
First, AlphaFold-Multimer first predicted the CP12 dimer's initial guess structures.[@jumper2021;@evans2021]
Then, the harmonic restrained all-atom molecular dynamics (MD) simulations were used to roughly refine the most likely structure of them in order to align it with the experimental results (SAXS[@shao2021] and EPR/DEER).
Finally, restrained-ensemble molecular dynamics (reMD) simulations[@roux2013;@shen2015;@islam2013;@qi2020] were used to further refine the structures generated in this manner, ensuring that the distance distributions of all spin pairs between the reMD simulations and the experimental EPR/DEER data are consistent.

![(A) Refinement scheme for the model obtained from AlphaFold2. (B) Starting model for the harmonic restrained MD simulations. C) Distances (blue) and distance distributions (black) between spin label pairs of the starting model for reMD simulation and DEER experiment data, respectively.](figures/cp12/scheme.jpg){#fig:scheme width=100%}

### FASTA sequence of CP12{#sec:sequence}
The 163 residues from CP12's complete amino acid sequence (shown in blue) that served as the input for AlphaFold2 modeling are as follows:

MKIFLASLIGSCAAFAPAPFGKSPTALFGRVDTS\textcolor{blue}{AIEAALDASKKFGSTSSEARVLWDIVEEMDASDNSVASKAPI
VDSEYEAKVKSLSQMLTKTKAELDQVKALADDLKGVKLASPSVGSSAPDDSVMKEALAAARAATEEFGQSSPQ
ARLAWETVEEIAASPVDIRAPLDEECLIELIEGCEALEKFQAALGSR}

### AlphaFold2 prediction
Using AlphaFold v2.1.1-Multimer (AF2) and the default databases,[@jumper2021;@evans2021;@tunyasuvunakool2021], the structure of the CP12 homodimer was predicted.
From NCBI[@shao2021], the wild-type (WT) amino acid sequence was retrieved .
For multiple sequence alignments (MSAs) lookup and structural template matching, an incomplete FASTA sequence of 163 residues (the blue portion of the sequence in @sec:sequence) was used in the AF2 input file.
The homodimeric structure of WT, S46C, and S56C mutants was predicted and the top five ranked models was outputed.
A measure known as predicted local distance difference test score (pLDDT, on a scale from 0 to 100, where 100 denotes the most confident) was used to assess the per-residue confidence for the model confidence along with the prediction outcomes.

### Harmonic restrained molecular dynamics simulations
All-atom harmonic restrained MD simulations without spin labels were followed by restrained-ensemble MD (reMD) simulations with spin labels in order to refine the resulting starting model and create a conformational ensemble that is realistic and fits both the experimental SAXS curve[@shao2021] and the spin-spin distance distributions discovered by EPR/DEER experiments.
A logic diagram for the simulation procedure is displayed in @fig:scheme A.
The reMD simulation[@roux2013] technique for the model with all-atom spin labels is suitable to exploit protein's structure in their native environment based on multiple distance histograms information obtained from EPR/DEER spectroscopy due to the high flexibility of R1 spin labels with 5 dihedral angles.
It should be noted that a significant difference between the spin pair distance in the reMD simulation's initial structure and the DEER data may result in incredibly quick atomic movements and unexpected simulation termination.
Therefore, before each run of the reMD simulation, a screening on the beginning model based on the distance information between all spin pairs is required to avoid such a violation.

Using harmonic restricted MD simulations from the model (@fig:scheme B) that was modified from the AF2 model, we began the structural refinement.
These two well-structured C-terminal helices were overfolded with the coiled-coil in the AF2 model (@fig:predicted-model), despite their high conformational flexibility that was revealed by DEER (C150 in @fig:scheme C), and could not be efficiently sampled by our preliminary calculations with conventional constant temperature, constant pressure MD simulations, even at a temperature higher than room temperature.
 simulations, even at a temperature higher than room temperature.
Therefore,  two C-terminal helices were manually shifted away from the dimer's coiled-coil portion (@fig:scheme B).
The ensuing simulations' computational specifics are described here.

(1)	Based on the improved AF2 model, we ran harmonic restricted MD simulations using the Amber 20 package.[@case2020]
The protein was modeled by the OPC model[@izadi2014] using the LEaP program of AmberTools20, and then immersed into a cubic periodic box full of water solvent molecules using the Amber ff19SB force field.[@tian2020]
At pH = 7.0, all charged residues were taken into consideration in their typical protonation condition.
To neutralize the simulation box, we added 28 sodium ions, and the total number of atoms is 178352.
With a distance cutoff of 9 Å, nonbonded particle-particle interactions[@duan2001a] were taken into account, and the particle mesh Ewald (PME) method[@salomon-ferrer2013] was used to treat long-range electrostatic interactions.
After the simulation system was minimized, heated, and adjusted, many rounds of MD simulations were run, with harmonic restrictions applied to the CA-CA lengths across the dimer for the corresponding spin-labeled residues S39, S46, S56, S83, and C150, and a spring force of 30 kcal/(mol·Å^2^).
Each round was place at _T_ = 300 K and _P_ = 0.978 atm for 100ps with a time step of 2 fs.
Every 1 ps, the trajectories and snapshots were stored.
The initial/target distances for each pair of CA atoms were, respectively, 73/68 Å for S39, 57/43 Å for S46, 26/32 Å for S56, 51/64 Å for S83, and 12/25 Å for C150.
In the first 2 ps of each cycle, the desired distances were readily attained (@fig:time-evolution).

![Time evolution of the CA-CA distances. We consider five residue pairs, S39-S39, S46-S46, S56-S56, S83-S83, and C150-C150 in the dimer. For each pair, the CA-CA distance are plotted as a function of time during harmonic restrained MD simulation using Amber.](figures/cp12/time-evolution.jpg){#fig:time-evolution width=100%}

(2)	By removing the waters and using CRYSOL[@svergun1995] of ATSAS-3.0.4-2[@franke2017] to compare the simulated SAXS curve with the experiment[@shao2021], we were able to compare the two using snapshots.
(3)	Using the reMD Prepper module of CHARMM-GUI[@qi2020], we assigned the all-atom spin label CYR1[@jo2014] to the residues S39, S46, S56, S83, and C150, respectively, if the simulated SAXS curve and the experiment were in good agreement.
We then measured the initial distance of each spin pair.

### Restrained-ensemble MD simulations

![The fixation between CYR1 spin label and its attached residues. The all-atom CYR1 spin label has a main chain like amino acid. The reMD simulation adds and fixes the spin label model by overlapping the main chain of spin label attached residue and the main chain of spin labels with a harmonic force constant of 10 kcal/(mol·Å^2^).](figures/cp12/spin-label.jpg){#fig:spin-label width=60%}

(4)	We then proceeded on to the reMD simulations using a modified version of NAMD 2[@shen2015;@qi2020] with an all-atom CHARMM36m protein force field[@huang2017] if all spin pair distances were within the experimentally reported range.
In order to conserve computational resources, we applied 25 copies of all-atom CYR1 spin labels to the corresponding residues S39, S46, S56, S83, and C150 using reMD Prepper in a vacuum.
The N, Cα, C, and O atoms of each spin label were locked to the corresponding atoms in the labeled residues (@fig:spin-label) throughout the entirety of the reMD simulations using a force constant of 10 kcal/(mol·Å^2^).
The force field of all-atom CYR1 spin label[@islam2015] is obtained using CHARMM-GUI.
By ignoring their interactions, the 25 copies of the CYR1 spin labels were permitted to overlap spatially.
With five separate random number seeds, five independent all-atom reMD simulations were run at 303.15 K using Langevin dynamics and a damping coefficient of 5 ps^-1^.
Prior to each reMD manufacturing run, we carried out minimization and equilibration, retaining the locations of the backbone atoms with harmonic restrictions of 2 kcal/(mol·Å^2^) imposed on them and only relaxing the sidechain atoms.
In order to further improve the structure, we turned off the harmonic restrictions placed on the backbone atoms and ran production reMD simulations for 2 ns with a 0.5 fs time step.
The particle mesh Ewald (PME) approach[@petersen1995] was used to handle the long-range electrostatic interactions, and the nonbonded interactions were trimmed at a distance cutoff of 10 Å.
With a force constant of 100 kcal/(mol·Å^2^) and a bin width of 0.025 nm, the distance distributions of each spin label pair were constrained in relation to the experimental distance distribution histograms.
Each reMD production run's atomic coordinates were saved every 1ps.
Since there are 25 copies of each spin label, a total of 625 distances were calculated for each pair of spin labels from a single snapshot of their trajectories, and a total of 1, 250 000 data points were produced for each pair of spin labels from a single reMD production run.
Using PyMOL[@llc2015] and VMD[@humphrey1996], respectively, trajectory analysis and protein visualization were carried out.

