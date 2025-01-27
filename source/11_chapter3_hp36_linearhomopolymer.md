
\newpage

# Site-selective heat current analysis with linear-homopolymer-like model {#cha3}
## The overall thermal conductivity {#sec:overall-thermal-conductivity}

![The thermal conductivity of HP36. The autocorrelation function of the heat current of the entire molecule of HP36 was calculated and ensemble-averaged, and plotted as a function of time (blue). The inset shows the short-time region (0 - 0.2 ps). The heat current autocorrelation function was integrated over time using the trapezoidal rule, yielding a quantity denoted as $\lambda$  as a function of integration time (shown in orange), and a running mean of $\lambda$ was computed with a window size of 100 fs and is illustrated in red. The volume of HP36 was set to 4845.447 $\AA^3$.[@yamato2022]](figures/cross/hcacf-100ps.jpeg){#fig:hcacf-100ps width=70%}

The overall thermal conductivity, denoted as $\lambda$, of the HP36 protein was determined using [@eq:eqc1] in this study. To calculate the total volume of HP36 and individual atom volumes, we utilized the VLDP (Voronoi Laguerre Delaunay Protein) method through a web server [@esque2013].
After obtaining the ensemble-averaged heat current autocorrelation function, we performed time integration using the trapezoidal rule, as depicted in [@fig:hcacf-100ps]. The value of $\lambda$ converged at approximately $t$ = 60 ps, resulting in a thermal conductivity of 0.26 $\mathrm{\pm}$ 0.01 $\mathrm{W{/}(m{\cdot}K)}$.
It is worth noting that the calculated value of $\lambda$ slightly differs from the previous calculation,[@yamato2022] primarily due to the utilization of a "flexible" TIP3P water model in the previous study.
The dependence of the water model on thermal conductivity will be discussed further in @sec:watermodel.
For subsequent analyses, we set the upper limit of the time integration of the local heat current autocorrelation function to 60 ps.

## Local thermal transport

The contribution factors for intra-residue and inter-residue heat currents were presented in [@fig:heat_before].
In general, the intra-residue contribution factors were found to be higher than the inter-residue factors (_c_), except for certain pairs of terminal residues (Met1-Leu2, Leu35-Phe36 and Gly12-Met13).
The average intra-residue contribution factor (see @eq:eqc10) was 0.029, which was nearly twice as large as the average inter-residue contribution factor (0.016).
This suggests that intra-residue thermal transport makes a dominant contribution to the overall heat current, which is consistent with the results of the master equation analysis. [@buchenberg2016]
In addition to these two dominating thermal energy transport pathways, the contributions from sidechain-sidechain heat currents across nonbonded native contacts were relatively small.[@yamato2022]

![The contribution factors without cross-correlation corrections were calculated and plotted for both intra-residue ($c_{\alpha, \alpha}$, shown in red) and inter-residue ($c_{\alpha, \alpha+1}$, shown in green) interactions, as described in equations (@eq:eqc11) and (@eq:eqc12), respectively. The data points, such as $c_{1,2}$, represent the contribution factor between residue numbers $\alpha = 1$ and $\alpha = 2$. The horizontal axis displays the residue number, $\alpha$, along with the corresponding residue names represented in the one-letter code. The grey-shaded regions correspond to the $\alpha$-helical regions.](figures/cross/heat-conductivity-before-corrected.jpeg){#fig:heat_before width=70%}

The sum of the intra-residue contribution factors, $\sum_{\alpha=1}^{36} c_{\alpha,\alpha}$, was 1.06, and the sum of the inter-residue contribution factors, $\sum_{\alpha=1}^{35}c_{\alpha,\alpha+1}$, was 0.57.
The deviation of 1.06 + 0.57 = 1.63 from 1 suggests the presence of non-negligible cross-correlation effects among different partial heat currents.
In @sec:cross-correlation, we will delve into a more detailed analysis of these cross-correlation effects.

## Cross-correlation correction {#sec:cross-correlation}

![The cross-correlation contribution factor between nearest neighbor residues, $c^{\rm{cross}}_{\alpha,\alpha+1}$, defined as $\xi_{\alpha,\alpha+1} / \Lambda$, was plotted as a function of the residue number. Each data point represents the value of $c^{\rm{cross}}_{\alpha,\alpha+1}$ between residue $\alpha$ and $\alpha+1$. For example, the data point $c^{\rm{cross}}_{1,2}$ corresponds to the cross-correlation between residues 1 and 2.](figures/cross/cross-correlation-term.jpeg){#fig:cross width=70%}

![Contribution factors with cross-correlation correction. See the caption to [@fig:heat_before].](figures/cross/heat-conductivity-after-corrected.jpeg){#fig:heat_after width=70%}

In this study, we assumed that the cross-correlation effect is short range along the polypeptide sequence (@sec:method-cross-correlation).
Interestingly, the cross-correlation effect exhibits secondary structure dependence (@fig:cross): the α-helical regions are less affected by the cross-correlation.
The reason for this observation is currently unclear and will be investigated further in future studies.

All of the contribution factors decreased after the cross-correlation correction (@fig:heat_after), yielding a similar pattern to @fig:heat_before.
The total intra-residue contribution was 0.75, approximately three times larger than that of the inter-residue contribution of 0.26.
To validate the assumption of short-range cross-correlation, we also calculated the contributing factors for the second nearest cross-correlation between residue pairs of α and α+2 ($\xi_{\alpha, \alpha+2}$), ($\alpha$ = 1, 2, ..., 34), using the same method described in @sec:method-cross-correlation.
The total contribution due to the second nearest cross-correlation was 0.03 (@tbl:secondnearest), while that for the nearest cross-correlation was –0.62 (@tbl:nearest), indicating that the second nearest cross-correlation has a minimal impact on the overall heat current.

To validate the linear-homopolymer-like model, we compared $\Lambda$ and $\tilde \Lambda$.
The former was derived from the exact heat current of the entire molecule, while the latter was based on the linear-homopolymer-like model.
The calculation results showed that $\tilde \Lambda$ overestimated $\Lambda$ only by 0.9%, indicating that the linear-homopolymer-like model successfully represents the thermal transport property of the entire molecule.

| Residue ($\alpha$)| Residue ($\alpha+2$) | $\xi_{\alpha, \alpha+2}$ | $c^{\rm{cross}}_{\alpha, \alpha+2}$ |
| :--------------- | :------------------- | :----------------------- | :--------------------- |
| ARG15            | ALA17                | 0.012                    | 0.001                  |
| ALA17            | ALA19                | -0.010                   | -0.001                 |
| PHE7             | ALA9                 | 0.027                    | 0.003                  |
| MET13            | ARG15                | -0.033                   | -0.003                 |
| PHE18            | ASN20                | -0.007                   | -0.001                 |
| GLN26            | ASN28                | 0.032                    | 0.003                  |
| LEU2             | ASP4                 | 0.036                    | 0.004                  |
| ASP4             | ASP6                 | -0.007                   | -0.001                 |
| TRP24            | GLN26                | 0.027                    | 0.003                  |
| LYS25            | GLN27                | 0.045                    | 0.005                  |
| LYS30            | GLU32                | 0.010                    | 0.001                  |
| SER3             | GLU5                 | 0.036                    | 0.004                  |
| VAL10            | GLY12                | 0.029                    | 0.003                  |
| GLU32            | GLY34                | 0.038                    | 0.004                  |
| ALA19            | LEU21                | 0.024                    | 0.002                  |
| LEU21            | LEU23                | -0.027                   | -0.003                 |
| GLN27            | LEU29                | 0.019                    | 0.002                  |
| LYS33            | LEU35                | 0.086                    | 0.009                  |
| LEU23            | LYS25                | 0.063                    | 0.006                  |
| ASN28            | LYS30                | -0.396                   | -0.040                 |
| LEU29            | LYS31                | 0.028                    | 0.003                  |
| LYS31            | LYS33                | 0.047                    | 0.005                  |
| ASP6             | LYS8                 | 0.000                    | 0.000                  |
| PHE11            | MET13                | 0.051                    | 0.005                  |
| ALA9             | PHE11                | 0.042                    | 0.004                  |
| SER16            | PHE18                | 0.015                    | 0.001                  |
| GLY34            | PHE36                | 0.034                    | 0.003                  |
| GLU5             | PHE7                 | -0.028                   | -0.003                 |
| ASN20            | PRO22                | 0.026                    | 0.003                  |
| THR14            | SER16                | -0.024                   | -0.002                 |
| MET1             | SER3                 | 0.042                    | 0.004                  |
| GLY12            | THR14                | 0.006                    | 0.001                  |
| PRO22            | TRP24                | 0.014                    | 0.001                  |
| LYS8             | VAL10                | 0.022                    | 0.002                  |

: The second nearest cross-correlation. $\xi_{\alpha, \alpha+2}$ was calculated in a similar manner as $\xi_{\alpha, \alpha+1}$ using @eq:eqc11, and contribution factor, $c^{\rm{cross}}_{\alpha, \alpha+2}$, was calculated as $\xi_{\alpha,\alpha+2} / \Lambda$. The values of $\xi$ are shown in the unit of ($\rm{\AA \rm{\cdot kcal/mol)^2/fs}}$. {#tbl:secondnearest}

| Residue ($\alpha$)       | $\bm\tilde\Lambda_{\alpha, \alpha}$ | $\bm\tilde\Lambda_{\alpha, \alpha+1}$ |
| :----------------------- | :--------------------------------- | :---------------------------------- |
| 1                        | 2.96$\times 10^{-1}$               | 1.27$\times 10^{-1}$                 |
| 2                        | 9.00$\times 10^{-2}$               | 5.81$\times 10^{-2}$                 |
| 3                        | 1.03$\times 10^{-1}$               | 6.34$\times 10^{-2}$                 |
| 4                        | 2.03$\times 10^{-1}$               | 9.76$\times 10^{-2}$                 |
| 5                        | 2.15$\times 10^{-1}$               | 9.27$\times 10^{-2}$                 |
| 6                        | 2.00$\times 10^{-1}$               | 7.05$\times 10^{-2}$                 |
| 7                        | 2.03$\times 10^{-1}$               | 5.94$\times 10^{-2}$                 |
| 8                        | 3.66$\times 10^{-1}$               | 4.24$\times 10^{-2}$                 |
| 9                        | 1.16$\times 10^{-1}$               | 1.01$\times 10^{-1}$                 |
| 10                       | 1.28$\times 10^{-1}$               | 5.16$\times 10^{-2}$                 |
| 11                       | 2.22$\times 10^{-1}$               | 4.46$\times 10^{-2}$                 |
| 12                       | 5.24$\times 10^{-2}$               | 1.16$\times 10^{-1}$                 |
| 13                       | 1.04$\times 10^{-1}$               | 5.71$\times 10^{-2}$                 |
| 14                       | 1.41$\times 10^{-1}$               | 7.19$\times 10^{-2}$                 |
| 15                       | 4.17$\times 10^{-1}$               | 7.80$\times 10^{-2}$                 |
| 16                       | 1.65$\times 10^{-1}$               | 1.31$\times 10^{-1}$                 |
| 17                       | 9.99$\times 10^{-2}$               | 6.63$\times 10^{-2}$                 |
| 18                       | 1.67$\times 10^{-1}$               | 5.29$\times 10^{-2}$                 |
| 19                       | 8.66$\times 10^{-2}$               | 7.07$\times 10^{-2}$                 |
| 20                       | 2.00$\times 10^{-1}$               | 9.87$\times 10^{-2}$                 |
| 21                       | 1.33$\times 10^{-1}$               | 2.73$\times 10^{-2}$                 |
| 22                       | 1.01$\times 10^{-1}$               | 6.27$\times 10^{-2}$                 |
| 23                       | 1.57$\times 10^{-1}$               | 3.26$\times 10^{-2}$                 |
| 24                       | 3.70$\times 10^{-1}$               | 5.49$\times 10^{-2}$                 |
| 25                       | 3.70$\times 10^{-1}$               | 7.62$\times 10^{-2}$                 |
| 26                       | 2.80$\times 10^{-1}$               | 7.27$\times 10^{-2}$                 |
| 27                       | 2.47$\times 10^{-1}$               | 7.45$\times 10^{-2}$                 |
| 28                       | 2.06$\times 10^{-1}$               | 6.62$\times 10^{-2}$                 |
| 29                       | 1.76$\times 10^{-1}$               | 7.15$\times 10^{-2}$                 |
| 30                       | 3.72$\times 10^{-1}$               | 7.73$\times 10^{-2}$                 |
| 31                       | 4.22$\times 10^{-1}$               | 7.41$\times 10^{-2}$                 |
| 32                       | 2.36$\times 10^{-1}$               | 6.30$\times 10^{-2}$                 |
| 33                       | 3.23$\times 10^{-1}$               | 7.02$\times 10^{-2}$                 |
| 34                       | 5.11$\times 10^{-2}$               | 4.60$\times 10^{-2}$                 |
| 35                       | 1.99$\times 10^{-1}$               | 1.09$\times 10^{-1}$                 |
| 36                       | 1.29$\times 10^{-1}$               |                                     |
| ------------------------ | ------------------------------     | ------------------------------      |
| total                    | 7.35                               | 2.53                                |

: Local thermal trasnport property after the cross-correlation correction. $\bm\tilde\Lambda_{\alpha, \alpha}$ ($\alpha$=1, 2, ..., 36) and $\bm\tilde\Lambda_{\alpha, \alpha+1}$ ($\alpha$=1, 2, ..., 35) are shown in unit of $\rm{(\AA \cdot kcal)^2/fs}$ (@eq:eqc8), while the value of $\Lambda$ was 9.79 in the same unit (@eq:eqc9). {#tbl:nearest}

## Residue-type dependence{#sec:residue-type-dependence}

By applying the site-selective heat current analysis based on the linear-homopolymer-like model, we were able to evaluate the residue-by-residue local thermal conductivity.
[@fig:residue_type] shows the dependence of the intra-residue contribution factors on the residue type.
The residue volume, $V_{\alpha}$, was calculated as the sum of the atomic volumes of the constituent atoms.
We obtained the average residue volume using five representative structures of HP36 in thermal equilibrium at _T_ = 300 K using the VLDP web server.[@esque2013]

We observed that the values of the corrected contribution factors, $\tilde c$, are proportional to the residue volume.
Additionally, the slope of the regression line depends on the residue type, indicating that the residue-wise thermal conductivity is sensitive to the residue type.
We define the residue-wise thermal conductivity, $\lambda_{\alpha}$, of residue α as $\tilde\Lambda_{\alpha,\alpha}/(3V_{\alpha}k_B T)$, and we see that $\lambda_{\alpha}$ decreases in the order of charged, polar, and hydrophobic residues,in consistent with the previous report that the thermal diffusion along an α-helix composed entirely of polar residues is faster than that of its non-polar residue counterpart.[@mino2014]

![Volume dependence of $\tilde{c}$, a residue-wise contribution factor after cross-correlation correction, for charged (green), polar (orange) and  hydrophobic (blue) residues, respectively.](figures/cross/residue_type_dependence_volume_after_correction.jpeg){#fig:residue_type}

## Local density dependence{#sec:local-density-dependence}

<!-- figures* environment create a two-column-sized figures  -->
![A scatter plot and linear correlation analysis were performed to examine the relationship between the intra-residue thermal conductivity and the local density, represented by the mass density ($\rho$), calculated as the ratio of residue mass to residue volume (unit: g/$\rm{cm^3}$).](figures/cross/density_combined.jpeg){#fig:density}

The density of a material is widely recognized as an important determinant of its thermophysical properties.[@mizutani2022]
The product of material density ($\rho$) and its specific heat capacity ($c_p$), denoted as $\rho{c_p}$, is commonly used as a measure of the thermal energy storage capacity of a material.[@bergman2011]
A higher value of $\rho{c_p}$ indicates a greater capacity of the material to store thermal energy.
In macroscopic homogeneous materials, it is generally observed that higher densities are associated with higher thermal conductivities.
This relationship is evident in various materials, such as high-density polyethylene having a higher thermal conductivity (0.44 $\mathrm{W{/} (m{\cdot}K)}$) compared to low-density polyethylene (0.3 $\mathrm{W{/} (m{\cdot}K)}$).

However, in the case of heterogeneous materials such as proteins, the local density can vary significantly from one site to another.
This is due to the different packing of amino acid residues, resulting in a wider distribution of residue densities.
The relationship between local density and thermal conductivity in proteins is shown in [@fig:density], a scatter plot of the residue-wise thermal conductivity versus local density of each residue.
The local mass density values range from 1.20 to 1.70 $\rm{g/cm^3}$, shown in [@fig:density], which is somewhat broader compared to those determined experimentally and theoretically (1.33 to 1.44 $\rm{g/cm^3}$).[@fischer2009]
This wider range of residue densities could be mainly attributed to the residue-wise volume variation between different environments, i.e., buried or exposed.
The buried residues, which are surrounded by other residues, tend to have a higher density than the exposed residues, with greater solvent accessibility,
leading to a broader distribution of residue densities within the protein molecule.[@harpaz1994;@baud1999]

![Comparison of the residue volumes in this study with  those in water (blue) and the protein interior (green)[@harpaz1994]. The second row of the x-axis represents the amino acid names using the one-letter format, with the residues buried into the protein interior highlighted in red. The third row indicates the residue types, with hydrophobic residues shown in blue, charged residues in green, and polar residues in orange.](figures/cross/volume_comparison.jpeg){#fig:volume_comparison}

| Residue type | *r*  | *p*-value | slope                |
|:-------------|:-----|:----------|:---------------------|
| overall      | 0.56 | 0.0004    | 1.55 $\times10^{-4}$ |
| charged      | 0.88 | 0.0008    | 4.3 $\times10^{-4}$  |
| polar        | 0.95 | 0.0004    | 2.1 $\times10^{-4}$  |
| hydrophobic  | 0.68 | 0.0019    | 9.4 $\times10^{-5}$  |
: Pearson correlation coefficient (*r*), *p*-value and slope of linear relationship between $\tilde c$ and volume in @fig:residue_type.
Generally, a value of $|r|$ > 0.3, or a *p*-value < 0.05 is often considered to be statistically significant, indicating that the pair of variables under consideration are correlated. {#tbl:pearson}

The linear regression analysis of the residue-wise thermal conductivity with cross-correlation correction shows a weak density dependence (@fig:density a).
The data points exhibit a broad distribution, and the correlation between thermal conductivity and density is not statistically significant, as indicated by a Pearson correlation coefficient of 0.3 and a *p*-value of 0.078.
Pearson correlation analysis for all data in @fig:density a and sub data points classified by residue types in @fig:density b are shown in @tbl:pearson.

In @fig:density b, the linear regression lines for hydrophobic and polar residues have almost constant thermal conductivity values, while charged residues show a negative proportionality, although the reason for this observation is unclear.
One possible explanation is that charged residues tend to have larger volumes compared to other residue types.[@harpaz1994]
Additionally, as shown in @fig:density b, the thermal conductivity of polar residues is approximately twice that of hydrophobic residues, in line with the previous observations of faster heat diffusion in $\alpha$-helices consisting of polar residues than their non-polar-residue counterparts.

For the HP36 protein, the subtotal contribution factors ($\tilde c$) for charged, polar, and hydrophobic residues were 0.32, 0.17, and 0.23, respectively.
Although HP36 contains smaller proportions of charged residues (10/36) than that of hydrophobic residues (18/36), the charged residues play more important roles in the thermal transport due to the relatively larger contribution to the overall heat current.

## Thermal diffusivity and temperature relaxation time

In the field of molecular biophysics,vibrational energy relaxation in proteins has attracted more attention than the thermal transport properties of proteins.
A pioneering study by Mizutani and Kitagawa [@mizutani1997] investigated the excess energy dissipation in myoglobin and observed double exponential decay in the population of the $\nu_4$ mode of the heme after flash photolysis.
They estimated the temperature relaxation times of the vibrational mode to be 3.0 and 25 ps, respectively, assuming a Boltzmann distribution for the vibrational mode.
This highlights the importance of picosecond dynamics in the temperature relaxation of proteins, which involves energy redistribution processes.

It is possible to estimate two parameters, namely the thermal diffusivity and temperature relaxation time, using the following equation [@bergman2011; @lervik2010; @kurisaki2023]:

$$
\lambda = \frac{\rho c_p R^2}{\tau} = \rho c_p \alpha
$$
{#eq:eqc20}

In this equation, $\lambda$ represents the thermal conductivity, $\tau$ is the relaxation time, $\alpha$ is the thermal diffusivity, $\rho$ is the protein density, $c_p$ is the heat capacity, and $R$ is the effective radius of the protein, which can be estimated from the protein volume, $V = \frac{4 \pi R^3}{3}$.

The estimated values of $\tau$ fall within the range of 8.4 to 13.9 ps, corresponding to a temperature relaxation rate ranging from 0.072 to 0.119 ps$^{-1}$.
It should be noted that the reported values of vibrational energy relaxation times range from a few picoseconds to several tens of picoseconds.[@henry1986; @mizutani1997; @lervik2010; @sagnella2001; @bu2003; @fujisaki2005]
The estimated thermal diffusivity is in the range of 7.9 to 13.2 Å$^2$ ps$^{-1}$, in good agreement with values obtained from nonequilibrium molecular dynamics simulations.[@botan2007; @nguyen2010]
The density of HP36 was calculated as $\rho = 1.57$ g/cm^3^, slightly larger than the widely used value of 1.35 g/cm$^3$.[@fischer2009]
The heat capacity was assumed to be in the range of 0.30 to 0.50 cal/g deg.[@gekko1979]

## Water model {#sec:watermodel}
In our previous study on the thermal conductivity of the HP36 protein [@yamato2022], we utilized the Amber ff14SB force field for the protein atoms and the TIP3P water model with the SHAKE constraints turned off, although this usage of the TIP3P model is unconventional.
It is known that simulations using the standard rigid TIP3P water model can exhibit anomalous diffusion.[@wu2006; @takemura2007]
To investigate the influence of the water models on protein thermal conductivity, we employed the Amber ff19SB force field in combination with the TIP3P water model, again with the SHAKE constraints turned off, but only for the protein in this particular study.
As mentioned earlier, the calculated thermal conductivity ($\lambda$) of the entire protein was found to be 0.26 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$, which is close to the value of 0.3 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$ obtained in our previous study.[@yamato2022]
This suggests that solvent properties may influence protein thermal conductivity through protein-solvent interfaces.

As discussed earlier in this chapter, protein-solvent interactions play a crucial role in determining the structure, dynamics, and function of proteins.
Notably, Straub, Leitner, and their colleagues have conducted significant studies on the energy transport across protein-water interfaces.
Sagnella et al. observed spatially directed "funneling" of kinetic energy from the heme group to the surrounding solvent for the dissipation of excess energy in myoglobin following flash photolysis.[@sagnella2001]
Agbo, Xu, Zhang, et al. investigated the thermal conductance between cytochrome c and water and demonstrated that the protein-water interface does not pose a greater Kapitza resistance to heat flow compared to the protein itself.
Interestingly, thermal conductance at protein-solvent interfaces varies for different types and shapes of proteins, ranging from 100 to 330 $\rm MWK^{-1}m^{-2}$.[@lervik2010; @kurisaki2023; @xu2014; @agbo2014; @agbo2014a]
Hamzi et al. studied the dependence of thermal conductance at protein-water interfaces on the types of amino acid residues, and they observed that hydrophobic and aromatic amino acids tend to exhibit lower interfacial thermal conductance.[@hamzi2022]
Other types of interfaces have also been investigated.
For instance, ultrafast energy dissipation from peptide helices to chloroform solvents on the timescale of 0.5 ps was observed through a collaboration between experimental and theoretical approaches.[@botan2007]
To gain insights into how different water models could affect thermal boundary conductance, it is useful to consider the vibrational density of states of both the protein and water [@xu2014a; @agbo2014a].
In contrast to our previous study,[@yamato2022] the present study using the rigid TIP3P water model shows that some high-frequency vibrational modes of the solvent are absent, resulting in a decrease in thermal conductance at the protein-water interface.
Consequently, it is plausible that the vibrational energy distribution, especially for surface amino acid residues near the protein-water interface, may be affected.
Moreover, the local heat capacities of such amino acid residues might also be influenced, leading to changes in the overall protein thermal conductivity.
Systematic studies of the influence of solvent models on the thermal transport properties of proteins and protein-solvent interface should be further investigated to validate these hypotheses.

<!-- ## Summary {#sec:summary-cha3}

The thermal transport properties of $\alpha$-helical proteins, using HP36 as an example, were investigated using equilibrium molecular dynamics (MD) simulations and the linear response theory.

The calculated thermal conductivity ($\lambda$) of the entire protein was found to be 0.26 $\mathrm{\pm}$ 0.01 $\mathrm{W{/} (m{\cdot}K)}$ using the AMBER ff19SB protein force field and the rigid TIP3P water model.
This value was in close agreement with the thermal conductivity obtained using the flexible TIP3P water model, suggesting that the choice of water model parameters does not significantly affect the inherent thermal transport properties of proteins.

To explore the local heat transport properties within the protein's interior, the protein molecule was divided into 36 amino acid residues.
A theoretical model known as the linear-homopolymer-like model was introduced for analysis.
In this model, it was assumed that heat flow predominantly occurs along the polypeptide backbone and within each individual amino acid residue.
Furthermore, it was assumed that the cross-correlation of partial heat currents between different regions is limited to short-range interactions.
Remarkably, the model successfully reproduced the exact value of the protein's thermal conductivity, as derived from the total heat current, with an error of only 1%.

Notably, the analysis revealed a distinct dependence of the residue-wise thermal conductivity on the type of amino acid residue.
The thermal conductivity values decreased in the following order: charged residues, polar residues, and hydrophobic residues.
This observation suggests that different residue types contribute differently to the overall heat transport within the protein. -->
