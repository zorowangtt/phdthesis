
\newpage
# Introduction {#cha1}

## Proteins

![The overall growth of protein structural data. Data were obtained from the RCSB Protein Data Bank ([https://www.rcsb.org](https://www.rcsb.org)), which serves as a valuable repository for storing and sharing these protein structures.](figures/introduction/proteinnumber.jpeg){#fig:proteinnumber}

Although proteins and protein-based materials,
such as meat, egg, silk and leather, have been common materials we use for millennia,
they were recognized as a distinct category of materials only after Antoine Fourcroy and others in the 18th century found that these materials coagulate or flocculate under high temperature or acid conditions.
In 1958, the first X-ray crystallographic structure of myoglobin, a globular protein molecule, was published by John Kendrew, hereafter, a new era in protein structural biology began.[@brändén1999]
Since then, protein structure determination has evolved beyond X-ray crystallography.
With advancements in techniques such as nuclear magnetic resonance (NMR), high-resolution electron microscopy, and computational methods, an increasing number of protein structures ([@fig:proteinnumber]) are being characterized.
These efforts are driven by the goal of achieving atomic-level resolution and a deeper understanding of protein structure, property and function.

![20 amino acids in proteins.](figures/introduction/aminoacid.jpg){#fig:aminoacid}

Most natural proteins are linear polymers with a sequence constructed by 20 different amino acids ([@fig:aminoacid]).
The distinguishing feature among them is the unique side chain attached to the central carbon atom (C) that connects the hydrogen atom, amino group (NH~2~), and carboxyl group (COOH).
They are usually classified into three different groups based on the chemical properties of their side chains.
Apart from intrinsically disordered proteins, globular proteins fold into specific structures, normally known as "native conformations", characterized by four levels of hierarchies: (1) primary structure, which refers to the amino acid sequence; (2) secondary structure, including α-helices, β-sheets, and turns/loops, which are stabilized by hydrogen bonds; (3) tertiary structure, representing the overall three-dimensional structure of a protein; and (4) quaternary structure, formed by multiple protein subunits.

## Vibrational energy transport in proteins

![Milestone studies on vibrational energy transport properties in proteins.](figures/introduction/milestone.jpg){#fig:milestone}

<!-- importance of vibrational thermal energy transfer in proteins -->

Protein and protein-based materials are considered as nonmetallic solids.
The thermophysical properties of some common protein materials have been measured and recorded in a series of data called _Thermophysical properties of matter_ collected by the TPRC Data Series in the 1970s.
In this data series, numerous data on the thermal conductivity, specific heat, and thermal diffusivity of protein materials are recorded and reported in volume 2, volume 5, and volume 10, respectively.

<!-- current methods for investigating energy transfer in proteins -->
Vibrational energy transfer in proteins plays a significant role in conformational changes, energy dissipation, protein folding and unfolding, bimolecular interactions, enzymatic reactions, and protein dynamics.
The current methods of investigating vibrational thermal energy transport in proteins include experimental and computational approaches.
Milestone studies on vibrational energy transport properties in proteins are shown in @fig:milestone.
From a macroscopic point of view, experimental methods involve measuring the thermal conductivity or diffusivity of protein samples using techniques such as laser flash analysis, 3ω method, or Raman spectroscopy.[@toberer2012]
From a microscopic point of view, time-resolved experimentation approaches, such as time-resolved ultraviolet resonance Raman spectroscopy and UV-pump-IR-probe transients spectroscopy,
have been used to investigate the vibrational energy transport mechanism in peptides and proteins.[@mizutani2022;@yamashita2018;@botan2007;@deniz2021]
These methods enabled direct observation of the redistribution of excess energy deposited into either natural group of protein, like heme, or unnatural amino acid sites connected to short peptides and proteins.

In 1997, Mizutani Yasuhisa and his colleagues utilized time-resolved ultraviolet resonance Raman spectroscopy to directly observe the energy flow in heme proteins, taking advantage of the efficient photothermal conversion properties of the heme group.[@mizutani1997]
The redistribution of excess energy can be probed by employing anti-Stokes ultraviolet resonance Raman spectroscopy on a tryptophan residue as a probe, enabling the mapping of energy flow with high spatial resolution.
In 2007, they observed a double exponential decay in the cooling process of the heme group in myoglobin, with time constants of 1.9 $\pm$ 0.6 and 16 $\pm$ 9 ps for vibrational population decay, and 3.0 $\pm$ 1.0 and 25 $\pm$ 14 ps for temperature relaxation.
Further investigations revealed that the primary pathway for energy transfer from the heme group to the protein is not mediated by the covalent bond between the heme and the proximal
or the protein backbone, but instead occurs through atomic contacts between the heme and specific residues.[@fujii2014;@kondoh2016;@mizuno2020;@mizutani2022]
In 2007, Gerhard Stock and his coworkers investigated the energy transfer through a 3$_{10}$-helix in chloroform solvent, whose N-terminal is attached with a heater of $\alpha$-aminoisobutyric acid, with a combined experimental-theoretical approach: UV-pump-IR-probe transients spectra and non-equilibrium molecular dynamics (MD) simulations.
Non-equilibrium MD simulations were also employed to simulate the dissipation of excitation energy from an unnatural amino acid (acting as a built-in heater), allowing the mapping of vibrational energy transport pathways originating from the heater.
It demonstrated that 70% of the energy absorbed by the helix quickly equilibrates within a timeframe of less than a picosecond to the solvent and subsequently spreads along the helix through a diffusive-like process.
The non-equilibrium MD simulations mimic the laser excitation of the molecules by the non-equilibrium phase-space initial condition for the solute and the solvent atoms.
The fitted experimental and simulated thermal diffusivity values along the peptide chain with 1D diffusion process were 10 $\AA$^2^ ps^\textminus1^ and 2 $\AA$^2^ ps^\textminus1^, respectively.[@botan2007]
Subsequently, the non-equilibrium MD simulations techniques were employed on various proteins, such as villin headpiece subdomain (HP36)[@leitner2015;@buchenberg2016], photoswitchable PDZ domain (PDZ2S)[@buchenberg2017], heptahelical transmembrane proteins[@helmer2022a] and so on.[@deniz2021]
Numerous results are yielded by these studies including scaling rules for vibrational energy transport in proteins through the backbone and nonbonded native contacts, competition of vibrational energy transport between bonds and contacts, and the role of energy transport on the allosteric mechanism in functional proteins.
Besides, John E. Straub and his coworkers have employed non-equilibrium classical MD simulations to study the spatially anisotropic “funneling” mechanism for the kinetic energy relaxation of the excited heme group in solvated myoglobin by directly depositing excess kinetic energy on heme.
They demonstrated that the kinetic energy decay of heme in native myoglobin and His93Gly mutant myoglobin were a single exponential with a time constant of 5.9 ps and 8.8 ps, respectively, while the kinetic energy relaxation of heme in cytochrome _c_ was a biphasic exponential decay process with relaxation time constants of 1.5 ps and 10.1 ps for fast and slow processes, respectively.[@sagnella2001;@bu2003;@bu2003a]

<!-- computational methods for investigating the energy transfer in proteins. -->
In addition to the non-equilibrium MD simulations mentioned above,[@kobus2011;@buchenberg2016;@continibali2017;@kumawat2017;@mino2014;@kurisaki2023] other computational and theoretical approaches[@leitner2010;@li2022;@thompson2014;@fujisaki2005;@pandey2017], including equilibrium MD simulations, normal mode analysis, i.e. the master equation model, and anharmonic network models, have also been employed to simulate the flow of vibrational energy in proteins.

One approach involves the utilization of a transport-coefficient-like quantity derived from the autocorrelation function of energy flow, which providing a measure of the amount of energy transferred per unit of time.[@ishikura2006]
This methodology has been employed to construct a network of amino acid residues that mediates the propagation of intramolecular vibrational energy.
This model (energy exchange network model) was employed to investigate the allosteric signal transduction mechanisms and energy transport pathways using equilibrium MD simulations.[@ota2019;@reid2020;@poudel2023]
Another approach, the master equation model, has been used to predict energy transport pathways in proteins.[@buchenberg2016;@reid2021;@valinoborau2020]
These predictions were compared to those obtained from all-atom non-equilibrium MD simulations.
Theoretical studies were also conducted on scaling rules between vibrational energy transport coefficient and either contact distance or the variance of contacts distance for amino acid residue pairs in nonbonded native contacts in proteins.[@buchenberg2016;@reid2018]
It is worth noting that vibrational transport occurs not only within the protein molecule but also across the protein-solvent interface and within the solvent.
Theoretical analyses have been conducted to investigate these aspects[@agbo2014;@sagnella2001].

## Linear response theory
The process of transferring heat and energy with a temperature gradient is typically thought of as a non-equilibrium system.
However, by considering carriers as particles, the fluctuation-dissipation transport theory, pioneered by Green and Kubo,[@mcquarrie2000;@kubo1957;@kubo1957a;@kubo1966;@gottwald2020] provides general expressions for transport coefficients.
These expressions are applicable at all times and densities and are derived from correlation or autocorrelation functions computed from an equilibrium system.
The key idea is based on the linear response theory, which offers a framework for illustrating the relationships between perturbations that are applied to a system and their responses.
As long as the state of the system stays close enough to the equilibrium, the equilibrium fluctuations can dictate the non-equilibrium response.
The system's response to a small perturbation is linearly related to the magnitude of the perturbation.
The analysis of the dynamic characteristics and transport phenomena of molecules and materials can be performed by using linear response theory in the context of molecular dynamics simulations and statistical mechanics.
A general expression of transport coefficient $\gamma$ can be represented in terms of the integral of time correlation functions as shown in @eq:transport.[@zwanzig1965;@kaviany2008]

$$
\gamma = \bm{\int_0^\infty} \left \langle \bm{\dot{A}}(t) \cdot \bm{\dot{A}}(0) \right \rangle dt
$$
{#eq:transport}

## Molecular dynamic simulations

Molecular dynamics (MD) simulations[@frenkel2002] are computational techniques that are widely used to study the behavior and dynamics molecules at the atomic level.
Furthermore, it can be used to explore the heat, energy and signal flow in proteins based on the linear response theory.
The MD simulations are especially suitable for studies of such transport phenomena in proteins as it allows for the _direct_ measurement of energy/heat flows with high spatiotemporal resolution.
Not only the biophysical properties of proteins, MD simulations are also useful for structural characterization and refinement of highly flexible proteins.
We explored such possibility by integrating MD simulations with the experimental small-angle X-ray scattering (SAXS) and electron paramagnetic resonance/double electron–electron resonance (EPR/DEER) data.[@lipfert2007;@boldon2015;@buhrke2020;@torricella2021]

In MD simulations, the laws of classical mechanics are used to numerically solve the equations of motion for molecular systems.
By specifying the initial positions and velocities of the particles, the system's time evolution can be simulated.
This allows us to observe and analyze various physical and chemical phenomena that occur on the atomic scale.
We need force field functions to accurately capture the behavior of protein systems using MD simulations.
In general, the force field functions consist of potential energy terms representing bonded interactions for bonds angles, dihedral angles, and nonbonded interactions of van der Waals forces and electrostatic interactions (@eq:forcefield).

$$
\begin{split}
&E_{total} = E_{\rm bonded} + E_{\rm nonbonded} \\
&E_{\rm bonded} = \bm \sum_{\rm bonds} K_b ( b-b_0)^2 + \bm \sum_{\rm angles}K_{\theta}(\theta-\theta_0)^2 + \bm \sum_{\rm dihedrals}K_{\chi}[1+ {\rm cos}(n\chi-\sigma)] \\
&E_{\rm nonbonded} = \bm \sum_{\rm i<j}\left[\frac{A_{ij}}{R_{ij}^{12}} - \frac{B_{ij}}{R_{ij}^{6}} + \frac{q_iq_j}{4 \pi \varepsilon R_{ij}} \right]
\end{split}
$$
{#eq:forcefield}

In @eq:forcefield, $K_b$, $K_{\theta}$ and $K_{\chi}$ are force constants for bonds, angles and dihedrals, respectively;
$b$ and $b_0$ are force constant the bond length and the equilibrium bond length;
$\theta$ and $\theta_0$ are the angle and the equilibrium angle, respectively;
$\chi$ is the dihedral value, _n_ is the periodicity, and σ is the phase.
$E_{\rm nonbonded}$ contains two parts.
The first term is also known as Lennard-Jones (LJ) potential, describing the attractive dispersion and repulsive interactions.
The second term corresponds to Coulomb’s law and is used to describe the electrostatic interactions.
$q_i$ and $q_j$ are the charges of atoms $i$ and $j$.
$R_{ij}$ is the interatomic distance and $\varepsilon$ is the dielectric constant.

Force field parameters are typically derived from experimental data and quantum mechanical calculations.
They aim to strike a balance between accuracy and computational efficiency, allowing simulations of biologically relevant timescales and system sizes.
Different force fields for different systems have been developed, each with its own set of assumptions, approximations, and parameterization strategies.
Commonly used force fields in MD simulations of biomolecular systems include CHARMM[@mackerell1998], AMBER[@cornell1995], GROMOS[@oostenbrink2004], and OPLS-AA[@jorgensen1996].
These force fields have been extensively tested and parameterized for a wide range of biomolecules, including proteins, nucleic acids, lipids, and carbohydrates.
The associated molecular dynamics software packages and servers have also undergone substantial development based on these force-fields, including CHARMM ([http://www.charmm.org](http://www.charmm.org)),[@brooks1983] Amber ([http://amber.scripps.edu](http://amber.scripps.edu)),[@weiner1981] GROMACS ([http://www.gromacs.org](http://www.gromacs.org)),[@berendsen1995] NAMD ([http://www.ks.uiuc.edu/Research/namd](http://www.ks.uiuc.edu/Research/namd)),[@nelson1996] and GENESIS ([https://www.r-ccs.riken.jp/labs/cbrt](https://www.r-ccs.riken.jp/labs/cbrt))[@kobayashi2017].

## Current calculation for proteins
CURP (CURrent calculation for Proteins, [https://curp.jp](https://curp.jp)) package is a computational tool designed by YAMATO group to calculate the energy/heat currents and atomic stress tensors in proteins.[@ishikura2012;@ishikura2015;@yamato2022]
It operates by utilizing atomic coordinates and velocity trajectories obtained from molecular dynamics (MD) simulations.
In this thesis, the CURP program is used to perform the energy flow, energy transport coefficient, heat current, thermal conductivity calculations.
A workflow diagram of CURP calculations is shown in @fig:curp.

![Workflow diagram of CURP program for energy/heat currents calculations, taken from [https://curp.jp](https://curp.jp).](figures/introduction/curp.png){#fig:curp}

## Machine learning methods
Machine learning methods play a crucial role in protein science by enabling the analysis, prediction, and understanding of various aspects related to proteins, including structure, function, interactions, and dynamics.[@suh2021;@pakhrin2021;@morgunov2021;@greener2022]
These methods leverage computational algorithms and statistical models to extract meaningful information from protein data and address complex challenges in the field.

One of the key applications of machine learning in protein science is protein structure prediction.
Predicting the three-dimensional structure of a protein from its amino acid sequence is a fundamental problem in biology.
Machine learning algorithms, such as deep learning-based approaches, have shown remarkable success in predicting protein structures with high accuracy.[@tunyasuvunakool2021;@bryant2022;@evans2021]
These methods utilize large training datasets, incorporating known protein structures, to learn patterns and relationships between sequences and structures, enabling the generation of accurate structure predictions for previously unknown proteins.

On the other hand, machine learning methods play a significant role in regression tasks in protein science, where the goal is to predict continuous or quantitative properties of proteins based on various input features.
Random forest regression method among them can make accurate predictions by building multiple decision trees on randomly sampled subsets of the training data and then averaging the predictions of all the trees to obtain the final prediction.
It can handle both numerical and categorical features,
automatically handles missing values and outliers,
and is resistant to overfitting.
The estimate of feature importance can be useful for feature selection.
As described in @sec:factors, the thermal transfer through nonbonded contacts is influenced by multiple factors related to various static and dynamical properties of proteins, interior of which we observe complex and heterogeneous environments.
To get a better understanding of the thermal transfer through nonbonded contacts, a non-linear regression model is developed between inter-residue thermal conductivity values and those static and dynamical properties of proteins by using the machine learning based approach of random forest methods.

## Knowledge gap

### The anisotropic and non-uniform flow of thermal energy
<!-- cha3: the introduction of cross correlation  -->
Thermodynamic and other environmental factors, such as temperature[@kashio2022;@thompson2019;@riedel2015;@kiyonaka2013;@weik2010;@johnson2007] as well as protein-solvent interactions,[@adams2021;@tanimoto2021;@devineau2017;@oroguchi2017;@continibali2014;@mcmahon2014] govern the structure, dynamics, and function of proteins.
Although thermal transport is one of the fundamental biophysical characteristics of proteins, it is still unclear how heat flow interacts with the molecular mechanism of protein activity.
The structure of a folded protein exhibits significant heterogeneity, resulting in anisotropic and non-uniform thermal energy flow during conformational fluctuations.
To gain insights into the site-specific thermal transport properties of proteins, the development of a theoretical method would be valuable.
A possibility is to introduce a concept of "residue-wise thermal conductivity", which allows us to analyze protein thermal transport at the level of individual amino acid residues.
However, several challenges arise when implementing such an approach.
Firstly, the small spatial scale occupied by each amino acid residue within the protein matrix introduces boundary effects that may significantly influence the residue-wise thermal conductivity.
These effects cannot be neglected and must be considered in the analysis.
Additionally, the local conformational fluctuations within a residue may not be independent of those occurring in the surrounding amino acid residues.
This interdependence poses further complexities in accurately characterizing the site-specific thermal transport properties.
To overcome these problems, we have developed a theoretical model, _linear-homopolymer-like model_, which incorporates the influence of cross correlations effectively into the site-selective heat current analysis based on the autocorrelation function formalism.
With this model, we aim to enhance our understanding of how thermal energy is transmitted and distributed at the residue level within protein interior.

### Determinates of protein energy transport

Proteins are complex biomolecules composed of amino acids that are connected by peptide bonds.
These molecules exhibit a hierarchical organization, including primary (linear sequence of amino acids), secondary (local patterns such as $\alpha$ helices or $\beta$ strands), tertiary (overall folding of the protein), and quaternary (association of multiple protein subunits) structures.
Within this heterogeneous and intricate system, residues participate in various interactions, including bonded interactions and nonbonded interactions.
Bonded interactions such as peptide and disulfide bonds in proteins keep the molecular topology, i.e., the pattern of connectivity of atoms, while nonbonded interactions such as ionic bonds (e.g. salt bridges between oppositely charged residues), and hydrogen bonds (e.g. interactions between backbone atoms or polar side chains) are responsible for maintaining and stabilizing the secondary, tertiary and quaternary structures of proteins.
Van der Waals interactions in proteins are a type of weak nonbonded interaction that occur between atoms that are close to each other but not covalently bonded.
They mainly contribute to the stabilization of tertiary and quaternary structures of proteins by optimizing the surface contact between residues and subunits.
Other types of nonbonded interactions in proteins include electrostatic interactions (such as those between charged residues or between dipoles), $\pi$-$\pi$ stacking (such as those between aromatic residues), etc, also play important roles in protein folding, stability, function, and interactions.

During thermal fluctuation and vibrational energy relaxation of proteins, transfer of kinetic or potential energy occurs from one part of the protein to another or between protein and the surrounding environment.
Different types of interactions can affect the rate and efficiency of energy transfer in proteins.
For example, the peptide bond not only keeps the primary structure intact, but also provides major pathways for energy transfer.
Nonbonded native contacts, found in the folded protein, stabilize the tertiary structure and play important roles in protein functions.
For instance, we expect that a protein molecule, as a biomolecular machine, should experience recognition of native contacts especially at the regulation site and the active site, in response to external stimulus, such as ligand binding at light illumination.
Accordingly, we also expect possible alteration of energy transfer pathways induced by the stimulus.

Using non-equilibrium MD simulations, the significance of different types of nonbonded contacts and the competition with the backbone have been studied in several proteins.
A computational study showed the dominating energy transfer efficiency of the backbone with a much higher energy diffusion constant of 1.25 nm^2^ ps^\textminus1^ in HP36 than through nonbonded contacts with much smaller diffusion constants (1.1 × 10^-4^ for polar contacts and 3.6 × 10^-7^ for nonpolar contacts).[@buchenberg2016]
In a joint experimental and computational study, the hydrogen bonds are found to be the dominant energy transfer pathway in $\beta$-hairpin fold.[@deniz2021]
On the contrary, a series of experimental findings on the heme proteins clearly demonstrated that the primary pathway for energy transfer from the heme group to the protein does not involve the covalent bond between the heme and the protein (Trp residue).
Instead, the predominant route involves atomic interactions between the heme group and the Trp residue.[@kondoh2016;@yamashita2018;@mizutani2022]
To quantitatively access the competition of different pathways (backbone and nonbonded contacts) and different types of interactions, it would be helpful to develop a method capable of measuring the heat transfer ability between residue and residue.

### Factors affecting heat transfer through nonbonded contacts {#sec:factors}

For structural property, David M. Leitner's group found that the correlations of energy transfer rate are linearly correlated with the mean-square distance for charged contacts between charged residue pairs in myoglobin.[@reid2018]
For dynamics, they also discovered that the energy transfer rate has a good correlation with the variance in the length of the contact for polar and hydrophobic contacts.[@buchenberg2016;@reid2018;@leitner2019;@poudel2020;@reid2020;@leitner2020a;@poudel2022;@poudel2023]
The hydrogen bonds have been found to facilitate the thermal transport in proteins and protein-based materials.
For instance, the thermal conductivity of $\pi-$helices, which have a stronger hydrogen bond strength, is two folds and three folds higher than that of $\alpha-$ and $3_{10}-$ helices, respectively.[@he2021]
Hydrogen bonding has been identified as the main contributor to the increase in the thermal conductivity of spider silk protein.[@zhang2014]
It has been reported that the thermal conductivity of spider silk protein is 1-2 orders of magnitude higher than that of globular proteins.
Furthermore, hydrogen bonding has been shown to facilitate dominant vibrational energy transfer pathways in $\beta$-hairpin structures, competing with energy transport along the backbone.[@deniz2021]
The scaling rules for rates of vibrational energy transfer in proteins have been extensively studied in various proteins, including HP36[@buchenberg2016;@poudel2020], myoglobin[@reid2018], deoxy-HbI/oxy-HbI[@leitner2019;@reid2020;@leitner2020a], A2A adenosine receptor[@leitner2020a], and GPCR proteins[@poudel2022;@poudel2023], by David M. Leitner and his colleagues.
These scaling rules have been validated and found to work particularly well for hydrogen bonding contacts, especially those within a distance of less than 2.8 Å.
However, given the importance of van der Waals interactions, especially in the hydrophobic core of water-soluble proteins, it would be helpful to consider a different approach as well.
Due to the complexity of protein systems, the thermal energy transport through contacts should be affected by a number of both static and dynamic properties, including their structure, compositions, dynamics, and interaction types.
Thus, the relationship between heat and energy transport efficiency through contacts and these protein properties is expected to be non-linear, rather than linear.

## Organization of the thesis

In this dissertation, we developed a theoretical framework for analyzing the local thermal transport properties based on the autocorrelation function formalism and applied it to two protein systems to study the heat, energy, and signaling flow.
In addition, due to the complexity of protein systems, advanced machine learning-based methods were utilized to identify the contributing factors of thermal transport in protein and the structural characterization of intrinsically disordered regions.

@sec:cha1 provides an introduction, including an overview of current studies and methods related to vibrational energy transport in proteins and protein solutions.
It, then, introduces the concepts of linear response theory and molecular dynamics simulation techniques.
It highlights the knowledge gap in understanding vibrational energy transport in proteins and protein solutions and emphasizes the significance of applying machine learning algorithms to address the protein-related problems.

@sec:cha2 detailed the methodology used to investigate thermal transport properties of proteins:
the calculations process of the overall thermal conductivity of proteins and the formalism for the site-selective heat current analysis.
It also introduces a novel integrated approach that combines machine learning algorithms, MD simulation techniques, and SAXS and EPR/DEER experiments for the structural characterization of intrinsically disordered protein complexes.

@sec:cha3 presents a further theoretical development for the analysis of local thermal transport properties using the autocorrelation function formalism with a model, linear-homopolymer-like model, applied to a small α-helical protein known as the villin headpiece subdomain (HP36) with a special emphasis on the role of heat current along the polypeptide chain.
Equilibrium molecular dynamics simulations were employed to study the thermal behavior of HP36 within this framework.
This chapter provides detailed insights into the local thermal transport phenomena occurring in HP36 and establishes a foundation for further research in this area.

@sec:cha4 focuses on the roles of nonbonded contacts in HP36 proteins.
The concept of inter-residue thermal conductivity was introduced as a measure of heat transfer between pairs of residues.
The competition of different types of interactions heat transfer is discussed.
In addition, the machine learning approach of random forest regression was used to explore the non-linear relationship between thermal conductivity and static/dynamic properties of proteins.

@sec:cha5 investigates the role of energy transport in signaling mechanism of protein.
Two forms of oxygen sensor proteins exhibit totally different activities, inactive and active forms, despite minimal structural differences.
The signaling pathways upon ligand binding and allosteric effects were identified by using the energy transport network model.

In @sec:cha6, machine learning methods were integrated with molecular dynamics simulations and experimental results to characterize the conformational ensemble of a new type of chloroplast protein (CP12) with intrinsically disordered regions.

Finally, @sec:cha7 provides a comprehensive summary of the conclusions drawn from this thesis.
It highlights the key findings and insights gained from the study of protein thermal transport properties and the application of machine learning algorithms.
Additionally, this chapter explores future research directions and suggests areas for further investigation.