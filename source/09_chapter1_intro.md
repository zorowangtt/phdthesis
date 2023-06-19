
\newpage
# Introduction {#cha1}

## Protein

![Overall growth of protein structures released per year. Data was obtained from the RCSB Protein Data Bank ([https://www.rcsb.org](https://www.rcsb.org)), which serves as a valuable repository for storing and sharing these protein structures.](figures/introduction/proteinnumber.jpeg){#fig:proteinnumber}

Although proteins and protein-based materials,
such as meat, egg, silk and leather, have had a place for millennia in society,
seeing them as a distinct category of materials was in the 18th century
due to they are found to tend to coagulate or flocculate under high temperature or acid conditions by Antoine Fourcroy and others.
In 1958, the first X-ray crystallographic structure of myoglobin, a globular protein molecule, were published by John Kendrew, hereafter, a new era in protein structural biology was began.[@brändén1999]
Since then, protein structure determination has evolved beyond X-ray crystallography.
With the advancements in techniques such as nuclear magnetic resonance (NMR), high-resolution electron microscopy, and computational methods, an increasing number of protein structures ([@fig:proteinnumber]) are being characterized.
These efforts are driven by the goal of achieving atomic-level resolution and a deeper understanding of protein structure, property and function.

![20 amino acids in proteins.](figures/introduction/aminoacid.jpg){#fig:aminoacid}

Most natural proteins are linear polymers with a sequence constructed by 20 different amino acids ([@fig:aminoacid]).
The distinguishing feature among them is the unique side chain attached to the central carbon atom (C) that connects the hydrogen atom, amino group (NH~2~), and carboxyl group (COOH).
They are usually classified into three different groups based on the chemical nature of their side chains.
Most proteins fold into three-dimensional structures, normally known as "native conformations", characterized by four levels of structure: (1) primary structure, which refers to the amino acid sequence; (2) secondary structure, including α-helices, β-sheets, and turns/loops, which are stabilized by hydrogen bonds; (3) tertiary structure, representing the overall three-dimensional structure of a protein; and (4) quaternary structure, formed by the arrangement of multiple proteins.

## Vibrational thermal energy transport in protein

![Milestone studies on vibrational energy transport properties in proteins.](figures/introduction/milestone.jpg){#fig:milestone}

<!-- importance of vibrational thermal energy transfer in proteins -->

Protein and protein based materials are considered as the nonmetallic solids.
The thermophysical properties of some common protein materials have been measured and recorded in a series of data called _Thermophysical properties of matter_ collected by the TPRC Data Series.
In this data series, numerous data of the thermal conductivity, specific heat, and thermal diffusivity about protein materials are recorded and reported in the volume 2, volume 5, and volume 10, respectively.

<!-- current methods for investigating energy transfer in proteins -->
Vibrational energy transfer in proteins plays a significant role in conformational changes, energy dissipation, protein folding and unfolding, bimolecular interactions, enzymatic reactions, and protein dynamics.
The current methods of investigating thermal energy transport in proteins include experimental and computational approaches.
From a macroscopic view, experimental methods involve measuring the thermal conductivity or diffusivity of protein samples using techniques such as laser flash analysis, 3ω method, or Raman spectroscopy.
From a microscopic view, time-resolved experimentation approaches, such as time-resolved ultraviolet resonance Raman spectroscopy and UV-pump-IR-probe transients spectroscopy,
have been used to investigate the vibrational energy transport mechanism in peptides and proteins.[@mizutani2022;@yamashita2018;@botan2007;@deniz2021]
Using these methods, it has been possible to directly observe the redistribution of excess energy deposited into either natural group of protein, like heme, or unnatural amino acid site connected to short peptides and proteins.

Milestone studies on vibrational energy transport properties in proteins is shown in @fig:milestone.
In 1997, Mizutani Yasuhisa and his colleagues utilized time-resolved ultraviolet resonance Raman spectroscopy to directly observe the energy flow in hemeproteins, taking advantage of the efficient photothermal conversion properties of heme group.[@mizutani1997]
The redistribution of excess energy can be probed by employing anti-Stokes ultraviolet resonance Raman spectroscopy on a tryptophan residue as a probe, enabling the mapping of energy flow with high spatial resolution.
In 2007, they observed a double exponential decay in the cooling process of the heme group in myoglobin, with time constants of 1.9 $\pm$ 0.6 and 16 $\pm$ 9 picoseconds for vibrational population decay, and 3.0 $\pm$ 1.0 and 25 $\pm$ 14 picoseconds for temperature relaxation.
Further investigations revealed that the primary pathway for energy transfer from the heme group to the protein is not mediated by the covalent bond between heme and the proximal
or the protein backbone, but instead occurs through atomic contacts between the heme and specific residues.[@fujii2014;@kondoh2016;@mizuno2020;@mizutani2022]
In 2007, Gerhard Stock and his coworkers investigated the energy transfer through a 3$_{10}$-helix in chloroform solvent, whose N-terminal is attached with a heater of $\alpha$-aminoisobutyric acid, with a combined experimental-theoretical approach: UV-pump-IR-probe transients spectra and nonequilibrium molecular dynamics (MD) simulations.
Non-equilibrium MD simulations were also employed to simulate the dissipation of excitation energy from an unnatural amino acid (acting as a built-in heater), allowing for the mapping of vibrational energy transport pathways originating from the heater.
It demonstrated that 70% of the energy absorbed by the helix quickly equilibrates within a timeframe of less than a picosecond to the solvent and subsequently spreads along the helix through a diffusive-like process.
The nonequilibrium MD simulations mimic the laser excitation of the molecules by nonequilibrium phase-space initial condition for the solute and the solvent atoms.
The fitted experimental and simulated thermal diffusivity along the peptide chain with 1D diffusion process were 10 $\AA$^2^ ps^-1^ and 2 $\AA$^2^ ps^-1^, respectively.[@botan2007]
Subsequently, the nonequilibrium MD simulations techniques were employed to various proteins, such as villin headpiece subdomain (HP36)[@leitner2015;@buchenberg2016], photoswitchable PDZ domain (PDZ2S)[@buchenberg2017], heptahelical transmembrane proteins[@helmer2022a] and so on.[@deniz2021]
Numerous results are yielded by these studies including scaling rules for vibrational energy transport in proteins through backbone and non-covalent native contacts, competition of vibrational energy transport between bonds and contacts, and the role of energy transport on allosteric mechanism in functional proteins.
Besides, John E. Straub and his coworkers has employed nonequilibrium classical MD simulations to study the spatially anisotropic “funneling” mechanism for the kinetic energy relaxation of excited heme group in solvated myoglobin by directly depositing excess kinetic energy on heme.
They demonstrated that the kinetic energy decay of heme in native myoglobin and His93Gly mutant myoglobin were a single exponential with a time constant of 5.9 p and 8.8 ps, respectively, while the kinetic energy relaxation of heme in cytochrome c was a biphasic exponential decay process with relaxation time constant of 1.5 ps and 10.1 ps for the fast process and the slow process, respectively.[@sagnella2001;@bu2003;@bu2003a]

<!-- computational methods for investigating the energy transfer in proteins. -->
Except for nonequilibrium MD simulations mentioned above,[@kobus2011;@buchenberg2016;@continibali2017;@kumawat2017;@mino2014;@kurisaki2023] other computational and theoretical approaches[@leitner2010;@li2022;@thompson2014;@fujisaki2005;@pandey2017], for instance, equilibrium MD simulations as well as approaches based on normal mode analysis, i.e. the master equation model, or anharmonic network models have also been developed and employed to simulate the flow of vibrational energy in proteins.

<!-- These methods have facilitated numerous studies aimed at identifying the determinants[@yamashita2018;@deniz2021;@mino2014] of vibrational energy transport and the role of vibrational energy transport in allosteric signal transduction. Theoretical methods offer valuable tools for investigating these issues at the atomic level of detail. -->

One approach involves the utilization of a transport-coefficient-like quantity derived from the auto-correlation function of energy flow, which represents the amount of energy transferred per unit time.[@ishikura2006]
This methodology has been employed to construct a network of amino acid residues that facilitates the propagation of intramolecular vibrational energy.
Subsequently, protein allosteric signal transduction mechanisms and energy transport patways were investigated[@ota2019;@reid2020;@poudel2023] through the energy exchange network model using equilibrium MD simulations.
In addition, the master equation model has been utilized to predict energy transport pathways in proteins.[@buchenberg2016;@reid2021;@valinoborau2020]
These predictions were compared to results from all-atom non-equilibrium MD simulations.
Additionally, scaling rules were employed in theoretical approaches to elucidate the role of protein structure and dynamics in vibrational energy transport.[@buchenberg2016;@reid2018]
It is worth noting that vibrational transport occurs not only within the protein molecule but also across the protein-solvent interface and within the solvent.
Theoretical analyses have been conducted to investigate these aspects[@agbo2014;@sagnella2001].

## Linear response theory

The process of transferring heat and energy with a temperature gradient is typically thought of as a non-equilibrium system.
A key idea in thermophysics is the linear response theory, which offers a framework for comprehending the connection between perturbations that are applied to a system and its responses.[@kubo1957;@kubo1957a;@kubo1966;@gottwald2020]
When the changes are small away from equilibrium, the equilibrium fluctuations dictate the non-equilibrium response.
The system's response to a small perturbation is linearly related to the magnitude of the perturbation.
The analysis of the dynamic characteristics and transport phenomena of molecules and materials can be performed by using linear response theory in the context of molecular dynamics simulations and statistical mechanics.
It allows us to probe the system's response to external perturbations, such as temperature, by calculating quantities such as correlation functions and transport coefficients, which will be applied in this thesis.

## Molecular dynamic simulations

Molecular dynamics (MD) simulations[@frenkel2002] are computational techniques that are widely used to study the behavior and dynamics of atoms and molecules over time.
They provide detailed insights into the movement, interactions, and properties of systems at the atomic and molecular level.
In this thesis, on the one hand, it is used to explore the heat, energy and signal transfer in proteins based on the linear response theory.
The MD simulations are specially suitable for studies of thermal transport in proteins as it allows for the _direct_ measurement of heat current with high spatio-temporal resolution.
On the other hand, it is used for structural characterize and refinement of highly flexible proteins integrated with the experimental small-angle X-ray scattering (SAXS) and electron paramagnetic resonance/double electron–electron resonance (EPR/DEER) data[@lipfert2007;@boldon2015;@buhrke2020;@torricella2021].

In MD simulations, the laws of classical mechanics are used to numerically solve the equations of motion for a collection of atoms or molecules.
By specifying the initial positions, velocities, and forces acting on the particles, the system's time evolution can be simulated.
This allows us to observe and analyze various physical and chemical phenomena that occur on the atomic scale.
To accurately capture the behavior of protein systems, MD simulations employ force fields that describe the interatomic interactions.
In general, these force fields consist of potential energy functions that incorporate parameters representing bond lengths, angles, dihedral angles, and non-bonded interactions such as van der Waals forces and electrostatic interactions and sometimes additional terms to account for specific interactions like hydrogen bonding.
Force fields are typically derived from experimental data and quantum mechanical calculations.
They aim to strike a balance between accuracy and computational efficiency, allowing simulations of biologically relevant timescales and system sizes.
Different force fields for different systems have been developed, each with its own set of assumptions, approximations, and parameterization strategies.
Commonly used force fields in MD simulations of biomolecular systems include CHARMM[@mackerell1998], AMBER[@cornell1995], GROMOS[@oostenbrink2004], and OPLS-AA[@jorgensen1996].
These force fields have been extensively tested and parameterized for a wide range of biomolecules, including proteins, nucleic acids, lipids, and carbohydrates.
The associated molecular dynamics software packages and servers have also undergone substantial development based on these force-fields, including CHARMM ([http://www.charmm.org](http://www.charmm.org)),[@brooks1983] Amber ([http://amber.scripps.edu](http://amber.scripps.edu)),[@weiner1981] GROMACS ([http://www.gromacs.org](http://www.gromacs.org)),[@berendsen1995] NAMD ([http://www.ks.uiuc. edu/Research/namd](http://www.ks.uiuc.edu/Research/namd)),[@nelson1996] and GENESIS ([https://www.r-ccs.riken.jp/labs/cbrt](https://www.r-ccs.riken.jp/labs/cbrt))[@kobayashi2017].

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
Random forest regression methods can make accurate predictions by building multiple decision trees on randomly sampled subsets of the training data and then average the predictions of all the trees to obtain the final prediction.
It can handle both numerical and categorical features,
automatically handles missing values and outliers,
and is resistant to overfitting.
The estimate of feature importance can be useful for feature selection.

As described in @sec:factors, the thermal transfer through non-bonded contacts are influenced by multiple factors related to various static and dynamical properties of proteins given the complexity of environment inside the proteins.
To get a better understanding on the thermal transfer through non-covalent contacts, a non-linear regression model between inter-residue thermal conductivity values and those static and dynamical properties of proteins is developed by using the machine learning based approach of random forest methods.
The feature importance of 

## Knowledge gap

### Anisotropic and non-uniform flow of thermal energy
<!-- cha3: the introduction of cross correlation  -->
Thermodynamic and other environmental factors, such as temperature[@kashio2022;@thompson2019;@riedel2015;@kiyonaka2013;@weik2010;@johnson2007] as well as interactions between proteins and solvents,[@adams2021;@tanimoto2021;@devineau2017;@oroguchi2017;@continibali2014;@mcmahon2014] govern the structure, dynamics, and function of proteins.
Although thermal transport is one of the fundamental biophysical characteristics of proteins, it is still unclear how heat flow interacts with the molecular mechanism of protein activity.
The structure of a folded protein exhibits significant heterogeneity, resulting in anisotropic and non-uniform thermal energy flow during conformational fluctuations.
To gain insights into the site-specific thermal transport properties of proteins, the development of a theoretical method would be valuable.
One potential concept is the notion of "residue-wise thermal conductivity", which allows for an analysis of thermal transport at the level of individual amino acid residues.
However, several challenges arise when attempting to implement such an approach.
Firstly, the small spatial scale occupied by each amino acid residue within the protein matrix introduces boundary effects that may significantly influence the residue-wise thermal conductivity.
These effects cannot be neglected and must be considered in the analysis.
Additionally, the local conformational fluctuations within a residue may not be independent of those occurring in the surrounding amino acid residues.
This interdependence poses further complexities in accurately characterizing the site-specific thermal transport properties.
To tackle these challenges, we have developed a theoretical model known as the _linear-homopolymer-like model_, which incorporates the autocorrelation function formalism with cross-correlation corrections.
This model aims to address the intricacies associated with boundary effects and the interplay between conformational fluctuations of neighboring residues.
By employing this theoretical framework, we aim to enhance our understanding of how thermal energy is transmitted and distributed at the residue level within proteins, considering both local and global factors. 
By applying this model, we aim to investigate the thermal transport properties in proteins, and provide valuable insights into the site-specific thermal conductivity within the protein.

<!-- cha4: the introduction of heat-energy transfer
    - debating of efficiency of different types of interactions 
    - scaling rules for a wider range of residue pairs
    - thermal transport networks
    - -->

### Debating on dominating way for energy transport
<!-- efficiency of different types of interactions   -->
<!-- proposed the debating of the dominating interaction on energy transfer in proteins. -->
<!-- Reference: 
- van der waals: Series of studies on heme proteins of Mizutani group's
- backbone dominating in HP36: 
- hydrogen bond $\beta$-strand case study in _Nature Commu._ 2021.

- classify the interactions  -->

Proteins are complex biomolecules composed of amino acids that are connected by peptide bonds.
These molecules exhibit a hierarchical organization, including primary (linear sequence of amino acids), secondary (local patterns such as $\alpha$ helices or $\beta$ strands), tertiary (overall folding of the protein), and quaternary (association of multiple protein subunits) sturctures.
Within this heterogeneous and intricate system, residues participate in various interactions, including bonded interactions and non-bonded interactions.
Bonded interactions in proteins include covalent bonds (e.g. peptide bonds, disulfide bonds), ionic bonds (e.g. salt bridges between oppositely charged residues), and hydrogen bonds (e.g. interactions between backbone atoms or polar side chains).
They are responsible for maintaining the primary structure and stabilizing the secondary and tertiary structures of proteins.
Van der Waals interactions in proteins are a type of non-bonded interaction that occur between atoms that are close to each other but not covalently bonded.
They are relatively weak and depend on the distance and orientation of the atoms.
They contribute to the tertiary and quaternary structures of proteins by optimizing the surface contact between residues and subunits.
Other types of non-bonded interactions in proteins include electrostatic interactions (such as those between charged residues or between dipoles), hydrophobic interactions (such as those between non-polar residues that avoid contact with water), pi-pi stacking (such as those between aromatic residues), etc.
They also play important roles in protein folding, stability, function, and interactions.

Energy transfer in proteins is the process of transferring kinetic or potential energy from one part of the protein to another or from the protein to its environment.
Different types of interactions can affect the rate and efficiency of energy transfer in proteins.
The covalent peptide bond as a linker for connecting basic building blocks of protein provides a good structure basis, while the non-covalent contacts in its tertiary structure after folding are considered to be the key of governing the normal physiology, and functioning in various protein activities including allostery.
Bonded interactions can also affect energy transfer by modulating the vibrational modes of the residues and van der Waals interactions can facilitate energy transfer between residues that are close to each other, but they can also hinder energy transfer if they cause steric hindrance or reduce flexibility.

From a non-equilibrium view, the significance of different types of non-bonded contacts and the competition with backbone have been studied in several proteins.
A computational study showed the dominating energy transfer efficiency of backbone with a much higher energy diffusion constant of 1.25 nm^2^ ps^-1^ in HP36 than through non-bonded contacts with much smaller diffusion constants (1.1 × 10^-4^ for polar contacts and 3.6 × 10^-7^ for nonpolar contacts).
While in a joint experimental and computational study, the hydrogen bonds are found to be the dominant energy transfer pathway in $\beta$-hairpin fold.
On the contrary, a series of experimental findings on heme proteins clearly demonstrated that the primary pathway for energy transfer from the heme group to the protein does not involve the covalent bond between heme and the protein (Trp residue).
Instead, the predominant route involves atomic interactions between the heme group and the Trp residue.[@kondoh2016;@yamashita2018;@mizutani2022]
To quantitatively access the competition of different pathways (backbone and non-bonded contacts) and different types of interactions, it would be helpful to develope a method capable of measuring the heat transfer ability between residue and residue.

### Factors affecting heat transfer through non-covalent contacts {#sec:factors}

For structural property, David M. Leitner's group found that the correlations of energy transfer rate is linearly correlated with the mean-square distance for charged contacts between charged residue pairs in myoglobin.[@reid2018]
It is reasonably understood because the interaction of charged groups obeys the Coulomb's law, where their force depends on their distance.
For dynamics, they also discovered that the energy transfer rate has a good correlation with the variance in the length of the contact for polar and hydrophobic contacts.[@buchenberg2016;@reid2018;@leitner2019;@poudel2020;@reid2020;@leitner2020a;@poudel2022;@poudel2023]
The hydrogen bonds have been found to facilitate the thermal transport in proteins and protein-based materials.
For instance, the thermal conductivity of $\pi-$helices, which have a stronger hydrogen bond strength, is two folds and three-folds higher than that of $\alpha-$ and $3_{10}-$ helices, respectively.[@he2021]
The hydrogen bonding has been found to be the main contributor to the increase in the thermal conductivity in spider silk protein, with thermal conductivity reported to be 1-2 order of magnitude higher than that of globular proteins,[@zhang2014] and be the dominant vibrational energy transfer pathway that can compete with transport along the backbone in a $\beta$-hairpin.[@deniz2021]
The scaling rules for rates of vibrational energy transfer in proteins have been extensively studied in various proteins, including HP36[@buchenberg2016;@poudel2020], myoglobin[@reid2018], deoxy-HbI/oxy-HbI[@leitner2019;@reid2020;@leitner2020a], A2A adenosine receptor[@leitner2020a], and GPCR proteins[@poudel2022;@poudel2023], by David M. Leitner and his colleagues.
However, it is important to note that these scaling rules have been validated and found to be applicable primarily for hydrogen bonding contacts, specifically those within a distance of less than 2.8 Å.
Given the considerable number of hydrophobic residues involving van der Waals interactions inside the proteins and those contacts with distances larger than 2.8 Å, a scaling rule that is applicable to a broader range of contacts is needed.
Due to the complexity of protein systems, the thermal energy transport through contacts should be affected by a number of both static and dynamical properties, including their structure, compositions, dynamics, and interaction types.
Thus, the relationship between heat and energy transport efficiency through contacts and these protein properties is expected to be non-linear, rather than linear.

<!-- **locate a gap in the research: Network model for non-covalent contacts/Comparison between thermal/energy and PCN** -->

<!-- ### Network model for non-covalent contacts
To gain a system-level understanding of biomolecule structures from a network perspective, network analysis has been employed based on 3D structures obtained from X-ray crystallography, NMR spectroscopy, and various types of electron microscopy to elucidate the relationship between protein structures and their functions.
These networks are typically constructed using nodes (amino acid residues) and links/edges (contacts).
There are several web-based tools available, such as RING3.0[@clementel2022], Protein Contact Atlas[@kayikci2018], NAPS[@chakrabarty2016], ANCA[@yan2020], and pyProGA[@sladek2021], that make these networks more accessible to users for various applications.
One notable approach is the AACEN (amino acid contact energy network), which is a type of ANCA model[@yan2020] that constructs a network using the electrostatic interaction energy (Coulomb potential) and the van der Waals interaction energy (Lennard-Jones potential) for non-covalent contacts.
Although many of these tools consider amino acid interactions from a geometric or chemical perspective, none of them take protein dynamics into account.
To address this gap, we propose a thermal transport network that describes non-covalent contacts from a thermal energy transport perspective. -->

## Organization of the thesis

In this dissertation, we developed a theoretical framework for analyzing the local thermal transport properties based on the auto-correlation function formalism and applied it to two protein systems to study the heat, energy, and signaling transport in protein systems.
In addition, due to the complexity of protein systems, advanced machine learning-based methods were utilized to illustrate the contributing factors of thermal transport in protein and the structural characterization of intrinsically disordered regions.

@sec:cha1 provides an introduction to proteins, including an overview of current studies and methods related to vibrational energy transport in proteins and protein solutions.
It then introduces the concepts of linear response theory and molecular dynamics simulation techniques.
Then, it identifies the knowledge gap in understanding vibrational energy transport in proteins and protein solutions and emphasizes the significance of applying machine learning algorithms to address protein-related problems.

@sec:cha2 provides a detailed description of the materials and methods used to investigate thermal transport properties within proteins and a novel method for the structural characterization of intrinsically disordered protein complexes.
It includes calculations of overall thermal conductivity of proteins, the formulism for site-selective heat current analysis on specific protein residues, and the procedures for conducting molecular dynamics simulations and a novel integrated approach that combines machine learning algorithms, MD simulation techniques, and SAXS and EPR/DEER experiments for the structural characterization of intrinsically disordered protein complexes.

@sec:cha3 presents the development of a theoretical framework that enables the analysis of local thermal transport properties using the autocorrelation function formalism.
The framework includes the construction of a linear-homopolymer-like model, which is then applied to investigate the thermal transport properties of a small α-helical protein known as the villin headpiece subdomain (HP36).
Equilibrium molecular dynamics simulations are employed to study the thermal behavior of HP36 within this framework.
The chapter provides detailed insights into the local thermal transport phenomena occurring in HP36 and establishes a foundation for further research in this area.

@sec:cha4 focuses on the analysis of local thermal transport properties through non-bonded contacts in HP36 proteins.
The inter-residue thermal conductivity is introduced as a measure of heat transfer between residues.
The competition of different interaction types of heat transfer is disscussed.
In addition, the machine learning approach of random forest regression is used to explore the non-linear relationship between thermal conductivity and static/dynamic properties of proteins.

@sec:cha5 investigates the role of energy transport in signaling mechanism of protein.
Two forms of oxygen sensor proteins exhibit totally differnet activities, inactive and active forms, despite minimal structural differences.
The signaling pathways upon ligand binding and allosteric effects are identified by the energy transport network.

In @sec:cha6, machine learning methods were integrated with molecular dynamics simulations and experimental results to characterize the conformational ensemble of a new type of _Thalassosira pseudonana_ chloroplastic protein (homodimeric CP12).

Finally, @sec:cha7 provides a comprehensive summary of the conclusions drawn from this thesis.
It highlights the key findings and insights gained from the study of protein thermal transport properties and the application of machine learning algorithms.
Additionally, the chapter explores future research directions and suggests areas for further investigation.