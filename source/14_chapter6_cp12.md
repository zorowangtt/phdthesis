
# Structural and dynamic characterization of CP12 protein {#cha6}

Intrinsically disordered regions (IDRs) are segments or regions within proteins that lack a stable three-dimensional structure.
Unlike folded domains or regions with well-defined structures, IDRs exhibit high flexibility and intrinsic disorder under physiological conditions.
These regions are characterized by a lack of stable secondary structures such as alpha helices or beta sheets.
Structural analysis of IDRs within proteins is a long-standing challenge in structural biology due to their considerable flexibility and spatiotemporal heterogeneity.

In this chapter, we present a novel method for defining the conformational ensemble of IDRs and describe how it was applied to the homodimer of the chloroplastic protein (CP12) from _Thalassosira pseudonana_.
The process is divided into three steps: (1) AlphaFold-Multimer is used to obtain an initial structure guess based on the amino acid sequence; (2) harmonic-restrained MD simulations to match experimental SAXS and EPR/DEER data; and (3) refine the conformational ensemble using restrained-ensemble MD simulations based on DEER and SAXS data.

## AlphaFold2 Model

![Top 5 homodimer models for WT, S46C and S56C mutants are shown with each residue being colored according to its per-residue confidence score (pLDDT): Blue (high), cyan (high medium), yellow (low medium) and red (low).](figures/cp12/af2-output.jpg){#fig:af2-output width=100%}

The figures in @fig:af2-output display the top five dimer models for the WT, S46C, and S56C mutants.
These models consist mainly of elongated forms (WT-1, 3-5) and a triangular form that is over-folded (WT-2).
According to Shao et al.,[@shao2021] the CP12 dimer assumes an elongated cylindrical shape with kinks, as evidenced by the small angle X-ray scattering analysis.
A representative WT model was chosen from five candidates, as shown in Figure @fig:predicted-model.
The model depicts one monomer in cartoon representation, with each residue colored according to its per-residue confidence score, while the other is in surface representation.
The helical regions were modeled with a high level of confidence, with the exception of the C-terminal helices and certain segments of the second helices.
In contrast, the random coils, which may be disordered regions, were modeled with a low level of confidence.

The presence of both globular folded and potentially disordered regions is in accordance with the Kratky analysis conducted during the SAXS experiment.[@shao2021]
The AF2 model depicts an antiparallel dimer featuring a coiled-coil that is made up of residues 46-82, including 45-75 with a high level of prediction confidence.
This supports the conclusion that the area encompassing residues 46-82 has a strong tendency towards coiled-coil organization, as previously inferred.[@shao2021]
The secondary structure elements of the model were estimated using YASARA View.[@krieger2014]
The estimated percentages were 79.1% for helix, 2.5% for turn, 18.4% for random coil, and 0% for β sheet.
However, the measurement of circular dichroism spectra reported a 10% occurrence of β-sheet.
This information was obtained from a study conducted by Shao et al.[@shao2021]
The illustration depicts the highlighting of two AWD_VEEL motifs and two cysteine residues, which are considered to be highly conserved.
The motifs are marked with sticks, while the cysteine residues are marked with spheres.
The AF2 model does not contain any inter- or intra-molecular disulfide bridges between two cysteine residues, as confirmed by experimental results.[@shao2021]

![AlphaFold2 model of wild-type Thalassosira pseudonana CP12 dimer. One monomer is shown in cartoon representation using a color scheme based on confidence measure (blue: high, cyan: high medium, yellow: low medium, red: low), and the other monomer presents a translucent surface format. Two AWD_VEEL motifs and two cysteine residues (C142 and C150) are shown with sticks and spheres, respectively. ](figures/cp12/predicted-model.jpg){#fig:predicted-model}

The experimental data (@fig:ambermd A) was compared with the estimated SAXS curve derived from the AF2 model.
The agreement of the intensity in the low q region, which is below 0.15 Å^–1^, was satisfactory.
However, the fit of the high q region, which is above 0.15 Å^–1^, was unsatisfactory.
According to the SAXS measurement[@shao2021], the AF2 model's radius of gyration (Rg) was found to be 35.7 Å, which is smaller than the experimental value of Rg (38.2 ± 0.4 Å).
The MTSL-MTSL distance distribution was analyzed using the AF2 model for various CP12 variants, as shown in Figure D of the Amber MD analysis.
The prediction model and the DEER experiment did not show any overlap for the distance distribution of S39R1 and C150R1 spin pairs.
This suggests that the AF2 model has limited reliability, despite its ability to accurately capture structural information on the more rigid components of the protein system.

## Molecular Dynamic Simulations

![(A) Comparison of SAXS curves between AlphaFold2 model and experiment; (B) Comparison of SAXS curves between initial structure of restrained-ensemble molecular dynamics (reMD) simulation and experimental data; In both (A) and (B), an insert figure shows the SAXS curve at low q region (0 – 0.1 Å^–1^) and gives the Rg for both experiment and predicted model. (C) Initial structure of CP12 with 25 copies of R1 spin labels for the production run of reMD simulations; (D) Comparison of experimental and calculated distance distribution between the spin labels on 5 the residue pairs. The SAXS discrepancy between simulated and experimental data, $\chi$^2^, for both (A) and (B), are marked in blue text.](figures/cp12/amberMD.jpg){#fig:ambermd width=100%}

The AF2 model underwent additional refinement through the implementation of restrained molecular dynamics (MD) simulation techniques.
The modified AF2 model was utilized as the primary model for conducting harmonic restrained molecular dynamics (MD) simulations.
The model involved relocating the two C-termini of the dimer away from its coiled-coil region, which was achieved through the use of PyMOL software, as illustrated in @fig:scheme B.
Subsequently, the procedure of harmonic restrained molecular dynamics (MD) was pursued by the restrained-ensemble MD (reMD) process, as depicted in @fig:scheme A.
The reMD simulations' primary model exhibits a superior alignment in the Small-Angle X-ray Scattering (SAXS) curve with the experimental curve compared to the AF2 model, as depicted in @fig:scheme B of the Amber Molecular Dynamics (MD) simulation results.
The model will be referred to as the reMDini model from this point forward.
The YASARA View[@krieger2014] was used to determine the estimated percentages of the secondary structure elements in the reMDini model.
The results showed that the model consisted of 50.6% α-helix, 2.1% β-sheet, 12.0% turn, and 35.3% random coil.
The circular dichroism spectrum measurements indicated that the contents of α-helix and random coil were in good agreement, with values of 32-50% and 27-48%, respectively.
The C-termini of the AF2 model exhibited significant disorder, while the well-folded long α-helices in the AF2 model underwent partial unfolding to become short α-helices in the reMDini model.
Twenty-five copies of the all-atom R1 spin labels were affixed to residues S39, S46, S56, S83, and C150 in both monomers of the reMDini model, as depicted in @fig:ambermd C.
Subsequently, five separate reMD simulations were initiated using distinct random number seeds.
The distance distributions of 5 spin label pairs were analyzed using reMD trajectories and compared with experimental ESR/DEER data, as shown in @fig:ambermd D.
The distance distributions of all spin pairs from the five distinct simulations were observed to be remarkably similar in the simulation.
This suggests that the sampling of the distance distributions in the reMD simulations is well-converged.
The simulated distance distributions were compared with the ones obtained from the EPS/DEER experiment.

The simulated distributions for spin pairs S39R1, S83R1, and C150R1 exhibit significant overlap with the corresponding experimental distributions.
However, partial overlaps are observed for spin pairs S46R1 and S56R1.
The experimental distance distribution of the S56R1 spin pair exhibits a significantly wider range compared to the simulated distance distribution.
The experimental distance distribution of the S46R1 spin pair displays two peaks that are absent in the simulated distance distribution.
The ESI-MS experiment[@shao2021] reported partial dissociation of the dimer.
Based on the aforementioned observations, it can be inferred that the coiled-coil region of the dimer in an actual solution environment may exhibit greater flexibility compared to the simulations.

![The radius of gyration (Rg) distribution of 20, 000 sampled structures from reMD simulations.](figures/cp12/rg-distribution.jpg){#fig:rg-distribution width=40%}

To conduct a thorough assessment of the reMD sampling structures, a total of 20,000 structures were obtained as an ensemble structure pool by extracting 4,000 structures from each parallel run of reMD.
A GAJOR analysis was conducted to obtain the distribution of radius of gyration (Rg) for a set of 20,000 sampled structures.
The resulting distribution is presented in @fig:rg-distribution.
The Rg distribution displays two prominent peaks at approximately 38.1 and 38.9 Å.
These values are in closer agreement with the experimental data (38.2 ± 0.4 Å) than the predicted model by AF2 (35.7 Å).
This indicates a noteworthy enhancement in the refinement of the CP12 dimer model through the application of MD simulations.

The simulated SAXS curve and inter-label distance distributions of our CP12 model were in good agreement with the experimental data, indicating that a combination of deep learning based algorithms like AlphaFold-Multimer, MD simulations, SAXS, and EPR/DEER experiments would provide a new possibility for structural characterization of IDRs and their complexes.