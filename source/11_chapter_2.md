\newpage

# Local Thermal Transport in an $\alpha$-helical Protein {#cha3}
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


## RESULTS AND DISCUSSION {#sec:results-and-discussion}

### The Overall Thermal Conductivity {#sec:overall-thermal-conductivity}

![Thermal conductivity of the entire HP36 protein molecule. The heat current autocorrelation function was ensemble-averaged and plotted as a function of time (blue), and the short-time region (0 - 0.2ps) is shown in the inset. The heat current autocorrelation function was integrated with respect to time using trapezoidal rule to obtain $\lambda$ (orange), and the running mean of $\lambda$ is shown with a window size of 100 fs (red). The value of volume was set as 4845.447 $\AA^3$.[@yamato2022]](figures/cross/hcacf-100ps.jpeg){#fig:hcacf-100ps width=50%}

The overall thermal conductivity, $\lambda$, of the HP36 protein was calculated using @eq:eqc1.
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

![Contribution factors without cross-correlation corrections. Intra-residue ($c(\alpha, \alpha)$, red) and inter-residue ($c(\alpha, \alpha+1)$, green) contribution factors (@eq:eqc11, @eq:eqc12) are plotted. For instance, data point $c(1,2)$ is shown between $\alpha$ = 1 and 2. The horizontal axis shows the amino acid residue number, $\alpha$, together with residue name in one-letter code. The areas shaded by grey correspond to the $\alpha$-helical regions.](figures/cross/heat-conductivity-before-corrected.jpeg){#fig:heat_before width=50%}

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





