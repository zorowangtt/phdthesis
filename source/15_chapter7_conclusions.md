\newpage
# Conclusions and Future Directions

## Conclusions
<!-- the aim of this study -->
This dissertation aims to develop a new formalism to study the energy transport, heat transport, and signaling in protein systems, based on the linear response theory using equilibrium MD simulations.

<!-- the introduction -->
Proteins are crucial macromolecules in living organisms, performing various essential functions.
In @sec:cha1, the history of protein is reviewed, starting from the early discovery and initial understanding of proteins, to the development of modern scientific techniques that have enabled us to gain deeper insights into the structure and function of proteins.
The structural composition rules of proteins and features were introduced.
Then, the current methods, theories, and techniques used to investigate the energy and heat transfer in proteins was summarized and introduced, along with important conclusions regarding the energy transfer properties of short peptides and proteins.

<!-- summarize the methods -->
In @sec:cha2, staring from the Geen-Kubo transport theory, the atomic expression of heat current and energy flow that is applicable to all density and situation materials under equilibrium state was derived.
Then, to get a better understanding of the nature of transport properties in proteins, a linear-homopolymer-like model was introduced to divide the proteins into small pieces by residues.
The local thermal transport properties at residue level was considered and calculated by the time-integrated autocorrelation functions (ACFs) of the partial heat currents.
The interactions between two neighboring residues results in the independent movement and behavior between each other.
Cross-correlation correction was introduced and employed to correct the overestimated contributions from partial heat currents to the total heat current for the entire protein.
Two new concepts, _inter-residue thermal conductivity_ and _inter-residue energy conductivity_, that can represent the amount of heat and energy transferred per unit time at steady-state.

<!-- conclusions of chapter 3 and 4  -->

In @sec:cha3 and @sec:cha4, the thermal transport properties of $\alpha$-helical proteins, using HP36 as an example, were investigated based on linear response theory using equilibrium molecular dynamics (MD) simulations.
The calculated thermal conductivity ($\lambda$) of the entire protein was found to be 0.26 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$ using the AMBER ff19SB protein force field and the rigid TIP3P water model.
This value was in close agreement with the thermal conductivity obtained using the flexible TIP3P water model, suggesting that the choice of water model parameters does not significantly affect the inherent thermal transport properties of proteins.
To explore the local heat transport properties within the protein's interior, the protein molecule was divided into 36 amino acid residues.
A theoretical model known as the linear-homopolymer-like model was introduced for analysis.
In this model, it was assumed that heat flow predominantly occurs along the polypeptide backbone and within each individual amino acid residue.
Furthermore, it was assumed that the cross-correlation of partial heat currents between different regions is limited to short-range interactions.
Remarkably, the model successfully reproduced the exact value of the protein's thermal conductivity, as derived from the total heat current, with an error of only 1%.

Notably, the analysis revealed a distinct dependence of the residue-wise thermal conductivity on the type of amino acid residue.
The thermal conductivity values decreased in the following order: charged residues, polar residues, and hydrophobic residues.
This observation suggests that different residue types contribute differently to the overall heat transport within the protein.

<!-- chapter 5, signaling pathway -->

In the @sec:cha5, the effects of imidazole binding and dimerization on an oxygen sensor protein, *Bj*FixLH, were investigated by theoretical computations with
the theory of energy flow and conductivity.
Using the energy exchange network (EEN) model, the residue-residue and protein-protein interactions of dimeric FixL protein are described.
A vibrational energy transfer pathway characterized in the active form of *Bj*FixLH protein, could be a possible signaling pathway.
Upon imidazole bound with heme, the allosteric effect induced from heme core is propagated starting from
the FG loop, through G/H/I α strands bridge and coiled-coil linker region, to the kinase domain.
The salt bridge, constructed by four charged residues (ASP154 and ARG254) and the DxT motif, might be as a
gate controlling the signaling from PAS-B domain to a residue cluster of coiled-coil linker region with a compact local interaction network.
A local residue cluster with compact interaction network is identified to be the signal transmitter connecting the PAS-B domain and HK domain to
stimulus autophosphorylation.
The interactions across the dimer interface plays a role in dimerization stabilization and the ligand
binding effect will destabilize the dimer interface giving rise to a more independent behavior than before.
Although the structural change between two states is very small, through the interaction changes in native contacts between the active form (met-*Bj*FixLH dimer) and (met-FixLH-imd dimer), the significant changes in inter-residue interactions are characterized by the energy exchange network.
The strengthened interactions between heme and Fα helix while the weakened interactions between heme-7 propionate -HIS214 and within G/H/I α antiparallel strands upon imidazole binding, indicates the signal
regulation process is responsible by a synergetic effect of rearrangement of the compact interactions network constructed by multiple reserved residues, rather than by individual residue.
The successful application of the energy exchange network model in the identification of functional residue network and protein-protein interactions shows the promising value in the area of solving the problem in biomolecules integrating with static structural information.
This also highlighted the importance of dynamic behavior on biomolecular functions in uncovering the biomolecules functions.

<!-- chapter 6, cp12 -->

In @sec:cha6,  we report a new strategy for characterizing the conformational ensemble of IDRs and its application to the _Thalassosira pseudonana_ chloroplastic protein (CP12) homodimer.
The method consists of three stages: (1) Obtaining an initial guess structure based on the amino acid sequence using AlphaFold-Multimer; (2) Harmonic-restrained MD simulations to meet the experimental SAXS and EPR/DEER data; (3) Refinement of the conformational ensemble by using restrained-ensemble MD simulations based on the information from DEER and SAXS experiments.
The simulated SAXS curve and inter-label distance distributions of our CP12 model were in good agreement with the experimental data, indicating that a combination of deep learning based algorithms like AlphaFold-Multimer, MD simulations, SAXS, and EPR/DEER experiments would provide a new possibility for structural characterization of IDRs and their complexes.

## Future Directions