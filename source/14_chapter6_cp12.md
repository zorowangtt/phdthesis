
# Structural and dynamical characterization of CP12 protein {#cha6}

Unlike folded domains or regions with well-defined three dimensional structures, intrinsically disordered regions (IDRs) in proteins, exhibit high flexibility under physiological conditions.
Thereby, these regions lack stable secondary structures such as alpha helices or beta sheets.
Structural analysis of IDRs within proteins is a long-standing challenge in structural biology due to their considerable flexibility and spatiotemporal heterogeneity.

In this chapter, we present a novel method for characterizing the conformational ensemble of IDRs and illustrate how it was applied to the homodimer of the chloroplast protein (CP12) derived from _Thalassosira pseudonana_.
The computational process is divided into three steps: (1) AlphaFold-Multimer is used to obtain an initial structure guess based on the amino acid sequence; (2) we use harmonic-restrained MD simulations to obtain model that fit to the experimental SAXS and EPR/DEER data; and (3) refine the conformational ensemble using restrained-ensemble MD simulations based on the DEER and SAXS data.

## AlphaFold2 Model

![Top 5 homodimer models for WT, S46C and S56C mutants are shown with each residue being colored according to its per-residue confidence score (pLDDT): Blue (high), cyan (high medium), yellow (low medium) and red (low).](figures/cp12/af2-output.jpg){#fig:af2-output width=100%}

The figures in @fig:af2-output display the top five models of CP12 homodimer for the WT, S46C, and S56C mutants.
We recognize elongated forms (WT-1, 3-5) and an over-folded triangular form (WT-2).
According to Shao et al.,[@shao2021] the CP12 dimer assumes an elongated cylindrical shape with kinks, as evidenced by the small angle X-ray scattering analysis.
A representative WT model was chosen from the five candidates, as shown in @fig:predicted-model:
one monomer is shown in cartoon representation, with each residue colored according to its per-residue confidence score (pLDDT), while the other is in surface representation.
The helical regions were modeled with a high level of confidence, with the exception of the C-terminal helices and some segments of the second helices.
In contrast, the random coils, which are likely to be disordered regions, were modeled with low level of confidence scores.

The presence of both globular folded and potentially disordered regions is consistent with the Kratky analysis conducted during the SAXS experiment.[@shao2021]
The AF2 model predicted an antiparallel dimer with the characteristic coiled-coil region made up of residues 46-82, including 45-75 with particularly high pLDDT.
It has been indicated that the area encompassing residues 46-82 has a strong tendency towards coiled-coil organization.[@shao2021]
The secondary structure elements of the model were estimated using YASARA View.[@krieger2014]
The estimated percentages were 79.1% for helix, 2.5% for turn, 18.4% for random coil, and 0% for β sheet.
It should be noted, however, that the measurement of circular dichroism spectra reported a 10% occurrence of β-sheet.[@shao2021]
The two AWD_VEEL motifs and two cysteine residues are considered to be highly conserved, and they are marked with sticks and spheres, respectively.
The AF2 model does not contain any inter- or intra-molecular disulfide bridges between two cysteine residues, in line with the experimental results.[@shao2021]

![AlphaFold2 model of wild-type Thalassosira pseudonana CP12 dimer. One monomer is shown in cartoon representation using a color scheme based on confidence measure (blue: high, cyan: high medium, yellow: low medium, red: low), and the other monomer presents a translucent surface format. Two AWD_VEEL motifs and two cysteine residues (C142 and C150) are shown with sticks and spheres, respectively. ](figures/cp12/predicted-model.jpg){#fig:predicted-model}

The experimental data (@fig:ambermd A) was compared with the estimated SAXS curve based on the AF2 model.
The agreement of the intensity in the low-q region, ( q < 0.15 Å^–1^), was satisfactory, however that in the high-q region, (q > 0.15 Å^–1^) was unsatisfactory.
According to the SAXS measurement[@shao2021], the AF2 model's radius of gyration (Rg) was found to be 35.7 Å, which is smaller than the experimental value of Rg (38.2 ± 0.4 Å).
The MTSL-MTSL distance distribution was analyzed using the AF2 model for various CP12 variants, as shown in Figure D of the Amber MD analysis.
The prediction model and the DEER experiment did not show any overlap for the distance distribution of S39R1 and C150R1 spin pairs, indicating a limited applicability of AF2 to such proteins with IDRs.

## Molecular Dynamic Simulations

![(A) Comparison of SAXS curves between AlphaFold2 model and experiment; (B) Comparison of SAXS curves between initial structure of restrained-ensemble molecular dynamics (reMD) simulation and experimental data; In both (A) and (B), an insert figure shows the SAXS curve at low q region (0 – 0.1 Å^–1^) and gives the Rg for both experiment and predicted model. (C) Initial structure of CP12 with 25 copies of R1 spin labels for the production run of reMD simulations; (D) Comparison of experimental and calculated distance distribution between the spin labels on 5 the residue pairs. The SAXS discrepancy between simulated and experimental data, $\chi$^2^, for both (A) and (B), are marked in blue text.](figures/cp12/amberMD.jpg){#fig:ambermd width=100%}

The AF2 model underwent further refinement through restrained molecular dynamics (MD) simulations.
Before we start the harmonic restrained molecular dynamics (MD) simulations, we modified the AF2 model: 
The two C-termini of the dimer were pulled apart from its coiled-coil region using PyMOL software (@fig:scheme B).
After the harmonic restrained molecular dynamics (MD) simulations, we conducted the restrained-ensemble MD (reMD) simulations (@fig:scheme A).
The estimated SAXS curve based on the initial model for the reMD simulations exhibits better alignment with the experimental curve than the AF2 model (@fig:scheme B).
The model will be hereafter referred to as the reMDini model.
The YASARA View[@krieger2014] was used to determine the estimated percentages of the secondary structure elements in the reMDini model:
The model consisted of 50.6% α-helix, 2.1% β-sheet, 12.0% turn, and 35.3% random coil.
The circular dichroism spectrum measurements indicated that the contents of α-helix and random coil were in good agreement, with values of 32-50% and 27-48%, respectively.
The C-termini of the AF2 model exhibited significant disorder, while the well-folded long α-helices in the AF2 model underwent partial unfolding to become short α-helices in the reMDini model.
Twenty-five copies of the all-atom R1 spin labels were affixed to residues S39, S46, S56, S83, and C150 in both monomers of the reMDini model (@fig:ambermd C).
Subsequently, five independent reMD simulations were performed with different random number seeds.
The distance distributions of 5 spin label pairs were analyzed using these reMD trajectories and compared with experimental ESR/DEER data (@fig:ambermd D).
It should be noted that the distance distributions derived from the five distinct trajectories were remarkably similar to each other, indicating that the sampling of the distance distributions in the reMD simulations was well-converged.
Each of the simulated distance distribution was, then, compared with the corresponding one obtained by the EPS/DEER experiment.

The simulated distributions for the spin pairs, S39R1, S83R1, and C150R1, exhibit significant overlap with the corresponding experimental distributions,
whereas, only partial overlaps are observed for the spin pair, S46R1 and S56R1.
The S56R1 spin pair exhibits a significantly broader distance distribution in the experiment than that obtained in the simulation.
The experimental distance distribution of the S46R1 spin pair shows two peaks that are absent in the simulated distance distribution.
Accordingly, the ESI-MS experiment[@shao2021], partial dissociation is likely to occur in the CP12 homodimer, indicating that the coiled-coil region may be much more flexible in an actual solution environment than in the simulations environment.

![Probability distribution of radius of gyration (Rg). We used of 20, 000 sampled structures from reMD simulations.](figures/cp12/rg-distribution.jpg){#fig:rg-distribution width=40%}

To conduct a thorough assessment of the reMD sampling, a total of 20,000 structures were obtained as an ensemble structure pool with 4,000 structures extracted from each reMD trajectory.
A GAJOR analysis was conducted to obtain the distribution of radius of gyration (Rg) for the 20,000 structures.
The resulting distribution is shown in @fig:rg-distribution.
The Rg distribution exhibits two major peaks at approximately 38.1 and 38.9 Å.
These values are in closer agreement with the experimental data (38.2 ± 0.4 Å) than the initial model obtained by using AF2 (35.7 Å).
We may conclude that MD simulations are effective in the modeling of proteins with IDRs.

In summary, the simulated SAXS curve and inter-label distance distributions of our CP12 model were in good agreement with the experimental data, indicating that a combination of deep learning based algorithms like AlphaFold-Multimer, MD simulations, SAXS, and EPR/DEER experiments would provide a new possibility for structural characterization of IDRs and their complexes.