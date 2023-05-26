\newpage

## INTRODUCTION

**importance of thermal and energy transport in proteins**

Thermal energy transport is important for understanding how proteins function, interact, and respond to environmental changes.

**Summary the current methods of investigating thermal energy transport process in proteins**

Current methods of investigating thermal energy transport in proteins include experimental and computational approaches.
From a macroscopic view, experimental methods involve measuring the thermal conductivity or diffusivity of protein samples using techniques such as laser flash analysis, 3ω method, or Raman spectroscopy.
Computational methods involve simulating the heat transfer or vibrational dynamics of protein structures using models such as molecular dynamics, normal mode analysis, or anharmonic network models.
Experimental methods such as time-resolved spectroscopy and computational methods like molecular dynamics simulations have been developed to investigate the vibrational energy flow in proteins.
These methods have been used to identify determinants of vibrational energy transport and its role in allosteric signal transduction.
However,

**Summarize the debate of dominating interactions on energy transfer in protein**

proposed the debating of the dominating interaction on energy transfer in proteins.
Reference: 
- van der waals: Series of studies on heme proteins of Mizutani group's
- backbone dominating in HP36: 
- hydrogen bond $\beta$-strand case study in _Nature Commu._ 2021.

- classify the interactions 

Proteins are complex biomolecules composed of amino acids that are connected by peptide bonds.
These molecules exhibit a hierarchical organization, including primary (linear sequence of amino acids), secondary (local patterns such as $\alpha$ helices or $\beta$ strands), tertiary (overall folding of the protein), and quaternary (association of multiple protein subunits).

classify 
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
For example, van der Waals interactions can facilitate energy transfer between residues that are close to each other, but they can also hinder energy transfer if they cause steric hindrance or reduce flexibility.
Bonded interactions can also affect energy transfer by modulating the vibrational modes and electronic states of the residues.
The covalent peptide bond as a linker for connecting basic building blocks of protein provides a good structure basis, while the non-covalent contacts in its tertiary structure after folding are considered to be the key of governing the normal physiology, and functioning in various protein activities including allostery.

For investigating the non-covalent contacts in protein, various methods and theories have been proposed and developed.

**What methods used in mapping native contacts based on only structure information: Protein Contact Network**

**locate a gap in the research/describe the problem you will address/**
present a prediction to be tested

**Polar, nonpolar, charged residue**
For polar type of residue pairs, they are attractive in nature.
Charged residue pairs are attractive or repulsive depending on their electric charge types are the same or opposite.
Nonpolar contacts are basically attractive because according to the classical Lennard-Jones potential plot their distance are far beyond 2 Å where the attractive interaction is the dominated interaction.

**locate a gap in the research: Network model for non-covalent contacts/Comparison between thermal/energy and PCN**

To gain a system-level understanding of biomolecule structures from a network perspective, network analysis has been employed based on 3D structures obtained from X-ray crystallography, NMR spectroscopy, and various types of electron microscopy to elucidate the relationship between protein structures and their functions.
These networks are typically constructed using nodes (amino acid residues) and links/edges (contacts).
There are several web-based tools available, such as RING3.0[@clementel2022], Protein Contact Atlas[@kayikci2018], NAPS[@chakrabarty2016], ANCA[@yan2020], and pyProGA[@sladek2021], that make these networks more accessible to users for various applications.
One notable approach is the AACEN (amino acid contact energy network), which is a type of ANCA model[@yan2020] that constructs a network using the electrostatic interaction energy (Coulomb potential) and the van der Waals interaction energy (Lennard-Jones potential) for non-covalent contacts.
Although many of these tools consider amino acid interactions from a geometric or chemical perspective, none of them take protein dynamics into account.
To address this gap, we propose a thermal transport network that describes non-covalent contacts from a thermal energy transport perspective.

**Highlight the competition of thermal energy transport through native contacts and that along the chain** 

**describe the present paper**

In this work, we utilized the equilibrium molecular dynamics (EMD) simulations and linear response theory to investigate the inherent thermal transport properties through non-covalent contacts in HP36.
We introduced the term _inter-residue thermal conductivity_ in Section [2](#methods) to quantify the capacity of transferring thermal energy across non-covalent contacts.
In order to examine the influence of interaction types on inter-residue thermal conductivity, we categorized the contacts into different types based on residue-residue interactions types.
As a special type of interaction, we quantitatively examined the role of hydrogen bonds in thermal energy transport through non-covalent contacts in proteins.
Additionally, to explore the competition between thermal energy transport along the backbone and across non-covalent contacts, we compared the data obtained in this study with our previous studies.
For a more comprehensive 

Using this method, the contributions from backbone and contacts transfer can be easily identified and compared within the protein.

\newpage

## RESULTS AND DISCUSSION
### Interaction type dependence on heat transfer through non-covalent contacts

![Histogram distribution of $\lambda_{\alpha,\beta}$ for different types of contacts in HP36 protein. The black and red lines represent the thermal conductivity of bulk water and HP36, respectively, for comparison. The $\lambda$ values of residue-wise and contacts between peptide bonded residue pairs are adopted from our previous study.[@yamato2023]](figures/non-bonded/histogram-lambda-after.png){#fig:histogram_lambda}

[@fig:histogram_lambda] shows a histogram plot of the calculated $\lambda_{\alpha, \beta}$ through non-covalent contacts, residue-wise $\lambda$ and $\lambda_{\alpha, \beta}$ values of contacts between peptide-bonded residues.
The x-axis represents the values of $\lambda$, while the y-axis shows the frequency of occurrence of each value.
The histogram reveals that the hydrogen bond contacts have the greatest values of $\lambda_{\alpha, \beta}$ among all non-covalent contacts, with a peak at around $2.5 \times 10^{-2}$ W m^-1^ K^-1^.
This is followed by electrostatic contacts with $\lambda_{\alpha, \beta}$ values ranging from $10^{-5}$ to $10^{-3}$ W m^-1^ K^-1^. However, their distribution appears to be broader and less sharply peaked compared to hydrogen bond contacts.
In the hydrophobic core of HP36, there are three $\pi$ stacking contacts: Phe7-Phe11 ($\lambda_{7,11}=4.9 \times 10^{-3}$), Phe7-Phe18 ($\lambda_{7,11}= 1.5 \times 10^{-3}$), and Phe11-Phe18 ($\lambda_{11,18}= 1.5 \times 10^{-3}$), with $\lambda_{\alpha, \beta}$ values that comparable with hydrogen bond contacts. 
Hydrophobic contacts, which have the most number of pairs and broad distributions ranging from $10^{-7}$ to $10^{-2}$ W m^-1^ K^-1^, have much lower $\lambda_{\alpha, \beta}$ values, with peaks at around $5.9 \times 10^{-4}$ W m^-1^ K^-1^.
Overall, the histogram demonstrates that different types of non-covalent contacts have significantly different contributions to thermal transport in the protein, with hydrogen bonds playing the most important role in this HP36 protein.

### Peptide bonds? or Non-covalent contacts?

![The $\lambda$ values of contacts between peptide bonded residue pairs](figures/non-bonded/line-intra-inter-lambda.png){#fig:inter_lambda}

In light of the ongoing debate on thermal energy transport through peptide bonds and contacts [@deniz2021;@mizutani2022;@buchenberg2016], we also plotted and compared the residue-wise $\lambda$ and $\lambda_{\alpha, \beta}$ values of peptide-bonded contacts in [@fig:histogram_lambda].
The residue-wise $\lambda$ values are ranging from about 0.08 to 0.3 W m^-1^ K^-1^, while $\lambda_{\alpha, \beta}$ values of peptide-bonded contacts are ranging from about 0.01 to 0.08 W m^-1^ K^-1^.
Our results showed that both residue-wise $\lambda$ and the majority of $\lambda_{\alpha, \beta}$ values of peptide-bonded contacts were larger than those of non-covalent contacts.
However, we observed three exceptions $\lambda_{3, 6}=2.4 \times 10^{-2}$, $\lambda_{4, 15}=1.3 \times 10^{-2}$, and $\lambda_{5, 8}=2.1 \times 10^{-2}$, where their $\lambda$ values exceed $10^{-2}$ W m^-1^ K^-1^ that the thermal transport through those contacts is able to compete with that along the peptide chain.
The relatively faster thermal transport through contacts of Ser3-Asp6 and Asp4-Arg15 have also been identified with a relatively higher local energy diffusivity in studies by non-equilibrium MD simulations and master equation model.[@buchenberg2016]
These contacts are referred to as "shortcuts", as they provide an efficient energy transport pathway despite being distant along the protein sequence.
This suggests that peptide bonds play a significant role in thermal transport within proteins in HP36, highlighting the importance of considering both peptide bonds and non-covalent contacts in studies of thermal transport in proteins.

### Thermal energy transport through hydrogen bonds {#sec:role-of-hb}

![$\lambda_{\alpha,\beta}$ values of contacts forming hydrogen bonds and their hydrogen bonds capacity ($c_{HB}$) during MD simulations. (a): all contacts forming hydrogen bonds; (b) contacts between residue $\alpha$ and $\alpha+4$.](figures/non-bonded/hb-capacity-lambda-all-ii4.png){#fig:hb_all_ii4}

As can be seen in [@fig:histogram_lambda] of [@sec:interaction-type-dependence-on-heat-transfer-through-non-covalent-contacts], the $\lambda_{\alpha, \beta}$ values of contacts through hydrogen bonds are generally greater than that of other non-covalent contacts.
The hydrogen bonds are also found to facilitate the energy transport in proteins.[@mino2014;@deniz2021]
A scatter plot between the values of $\lambda_{\alpha,\beta}$ and their hydrogen bonds capacity during the MD simulations was shown in [@fig:hb_all_ii4]a.
The linear regression analysis revealed a Pearson correlation coefficient of $r$ = 0.51 (> 0.3) and a $**p$-value of 0.007 ($\ll$ 0.05), indicating a significant correlation between $\lambda_{\alpha,\beta}$ and hydrogen bonds capacity of residue pairs.

In proteins constructed in an $\alpha$-helical manner, two types of hydrogen bonds can be distinguished.
The first type, known as central hydrogen bonds, plays a key role in stabilizing the helical structure by forming hydrogen bond between the amino group (N-H) of one amino acid and the carbonyl oxygen (O) of a second amino acid, usually occurring between residues $\alpha$ to $\alpha$+4 in the helical regions.
The second type of hydrogen bonds are formed by the sidechains of the involved amino acids, either between sidechain and sidechain or between sidechain and mainchain.
Miño et al. showed that the heat diffusion along $\alpha$-helices containing both types of hydrogen bonds is twice faster than those containing only the first type of hydrogen bonds, highlighting the important role of the second type of hydrogen bonds in proteins.[@mino2014]
To investigate the role of the first type of hydrogen bond in heat transport in HP36, we classified and plotted the $\lambda$ values of 32 residue pairs between residue i and i+4 (n=1, 2, ..., 32), as shown in [@fig:hb_all_ii4]b.
In HP36, the crystal structure (PDB: 1VII) reveals the presence of three alpha-helices, H1 (residues 4-8), H2 (residues 15-18), and H3 (residues 23-32), which should give rise to eight residue pairs that form the first type of hydrogen bonds.
However, there were some residue pairs that did not form the first type of hydrogen bonds in the crystal structure but were observed to form such bonds in MD simulations.
These pairs were classified as non-helical residue pairs but forming hydrogen bonds.
In the previous studies[@mino2014], the heat diffusion along $\alpha$-helices containing both types of hydrogen bonds is twice faster than those containing only the first type of hydrogen bonds, highlighting the important role of the second type of hydrogen bonds in proteins.
To investigate the role of the first type of hydrogen bond in heat transport in HP36, we classified and plotted the $\lambda$ values of 32 residue pairs between residue i and i+4 (n=1,2, ..., 32), as shown in [@fig:hb_all_ii4]b.
In HP36, the crystal structure (PDB: 1VII) reveals the presence of three alpha-helices, H1 (residues 4-8), H2 (residues 15-18), and H3 (residues 23-32), which should give rise to eight residue pairs that form the first type of hydrogen bonds.
However, there were some residue pairs that did not form the first type of hydrogen bonds in the crystal structure but were observed to form such bonds in MD simulations.
These pairs were classified as non-helical residue pairs but forming hydrogen bonds.
Interestingly, the $\lambda$ of non-helical residue pairs that did not have the opportunity to form hydrogen bonds was significantly lower than that of helical residue pairs.

<!-- ![$\lambda_{\alpha,\beta}$ values of contacts forming hydrogen bonds and their hydrogen bonds capacity ($c_{HB}$) during MD simulations](figures/non-bonded/hb-capacity-lambda-ii4.png){#fig:hb_ii4} -->

For a detailed analysis of the role of hydrogen bonds, we focus on the contacts of residue $\alpha$ and $\alpha$+4.
In HP36, the crystal structure (PDB: 1VII) reveals the presence of three $\alpha$-helices, H1 (residues 4-8), H2 (residues 15-18), and H3 (residues 23-32), which should give rise to eight residue pairs that form the first type of hydrogen bonds.
However, we observed some residue pairs that did not form the first type of hydrogen bonds in the crystal structure but were observed to form such bonds in MD simulations, and they were listed in Table S2.
After the statistical analysis of the hydrogen bonds formation from MD trajectories, it was found that almost all hydrogen bonds of contacts between residue $\alpha$ and $\alpha$+4 were the first type, with one exception of the contact between 16SER and 20ASN, where they also formed hydrogen bonds between mainchain and sidechain.

Their $\lambda_{\alpha,\alpha+4}$ values, interaction types, their $c_{HB}$ and contacts distances are listed in Table S3.
The $\lambda_{\alpha,\beta}$ values for contacts with no hydrogen bonds are significantly lower, i.e. an order of magnitude lower, than those with hydrogen bonds.
Two special residues pairs (2LEU-6ASP and 21LEU-25LYS) did not form hydrogen bonds but had relative higher $\lambda_{\alpha,\beta}$ values.
This may be because of their interactions are stronger than those contacts with no hydrogen bonds, which are all hydrophobic residues with weak Van der Waals interactions.

A smaller data set consisting of $\lambda_{\alpha,\alpha+4}$ and $c_{HB}$ with hydrogen bonds formed was used to fit a linear regression relationship, as shown in [@fig:hb_all_ii4]b.
The Pearson correlation coefficient and $p$-value are 0.80 (> 0.3) and 0.001 ($\ll$ 0.05), respectively, indicating a stronger correlation relationship than for all hydrogen bond contacts.
The contact distance is a factor that can affect the thermal transport through contacts.[@reid2018] For data set used in [@fig:hb_all_ii4]a, their distance varied at a relatively broad range (2 - 4 Å) compared to the smaller data set used in [@fig:hb_all_ii4]b, where the distances of all contacts were 2.1 $\pm$ 0.2 Å.

<!-- $\pi$ stacking: Phe7-Phe11, Phe11-Phe18, Phe7-Phe18.
only Phe7-Phe11 has the largest $\lambda$, while Phe7-18 and Phe11-18 have a same $\lambda$ with no hydrogen bonds for them. -->

### Thermal conductivity and energy conductivity

In previous studies, we explored the energy transport network in proteins by analyzing the _inter-residue energy conductivity_ ($G_{\alpha, \beta}$).[@ishikura2006;@leitner2010;@ishikura2015;@ota2019;@poudel2020]
As a carrier of energy for heat, we are wondering whether there are any correlations between heat and energy transfer among different partial sites, i.e., different residues. Relating the inter-residue thermal conductivity and energy conductivity will be helpful to understand the property of heat and energy transfer in proteins.

![Plot of inter-residue thermal conductivity ($\lambda_{\alpha, \beta}$) and energy conductivity ($G_{\alpha, \beta}$). Residue pairs are classified by residue type of native contacts.](figures/non-bonded/lambda-energy.png){#fig:lambda_energy}

From [@eq:eq1;@eq:eq4;@eq:eq5; and @eq:eq7], we can see that the difference between thermal conductivity $\lambda_{\alpha, \beta}$ and energy conductivity ($G_{\alpha, \beta}$) is that for the latter its energy flow term ($\bm J_{ij}$) lacks of position vector, ($\bm r_i- \bm r_j$), which represents the distance information of the residues while MD simulations.
To investigate this issue, we plotted the scatter dots $\lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$ in [@fig:lambda_energy] and performed the linear regression analysis.
Interestingly, the Pearson correlation analysis showed a significant relationship statistically between $\lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$, with $r = 0.97, \, p << 0.05 \,(4.47 \times 10^{-168})$.
To get an estimated linear regression model that can expresses their relationship, a fitted model is given here: $\log{\lambda_{\alpha, \beta}} = 0.73 \times \log{{G}_{\alpha, \beta}} - 0.30$ with $R^2 = 0.94$.

### Important features on thermal transport through non-covalent contacts
<!-- ## Random Forest Analysis -->
Due to the complexity of protein systems, the thermal energy transport through contacts is affected by a number of properties, including their structure, compositions, dynamics, as well as interaction types suggested in the [@sec:interaction-type-dependence-on-heat-transfer-through-non-covalent-contacts] of this work.
For structural property, David M. Leitner's group found that the correlations of energy transfer rate is linearly correlated with the mean-square distance for charged contacts between charged residue pairs in myoglobin.[@reid2018]
It is reasonably understood because the interaction of charged groups obeys the Coulomb's law, where their force depends on their distance.
For dynamics, they also discovered that the energy transfer rate has a good correlation with the variance in the length of the contact for polar and hydrophobic contacts.[@buchenberg2016;@reid2018;@leitner2019;@poudel2020;@reid2020;@leitner2020a;@poudel2022;@poudel2023]
The hydrogen bonds have been found to facilitate the thermal transport in proteins and protein-based materials.
For instance, the thermal conductivity of $\pi-$helices, which have a stronger hydrogen bond strength, is two folds and three-folds higher than that of $\alpha-$ and $3_{10}-$ helices, respectively.[@he2021]
The hydrogen bonding has been found to be the main contributor to the increase in the thermal conductivity in spider silk protein, with thermal conductivity reported to be 1-2 order of magnitude higher than that of globular proteins,[@zhang2014] and be the dominant vibrational energy transfer pathway that can compete with transport along the backbone in a $\beta$-hairpin.[@deniz2021]

Although the scaling rules of rates of vibrational energy transfer in proteins has been investigated in several proteins including HP36,[@buchenberg2016;@poudel2020] myoglobin[@reid2018], deoxy-HbI/oxy-HbI,[@leitner2019;@reid2020;@leitner2020a], $A_{2A}$ adenosine receptor[@leitner2020a], and GPCR proteins[@poudel2022;@poudel2023], by David M. Leitner and his coworkers as summarized above,
these scaling rules are applicable and verified only for the short-range (< 2.8 Å) van der Waals interactions, hydrogen bonds, and charged contacts.
Given the considerable number of hydrophobic contacts shown in [@fig:histogram_lambda] that their contact distances are larger than 2.8 Å (Figure S2), a scaling rule that is applicable to a broader range of contacts is needed.

![(a) Cross plot of $\lambda_{\alpha,\beta}$ and predicted $\lambda_{\alpha,\beta}$ using random forest regression model; (b) VIP score plot of variable importance of variables. $\langle d_c^2 \rangle$: contact (shortest) distance of residue $\alpha$ and $\beta$; $P_{HB}$: hydrogen bonds occurrence probability; $\langle \delta d_c^2 \rangle$: the variance in contacts distance; $V_{\alpha\beta}$: summation volume of contacts; RT$_\alpha$ (RT$_\beta$): residue type; IT: interaction type.](figures/non-bonded/random-forest.png){#fig:random-forest}

To get a better understanding of the contributions of these features to the thermal transport properties of contacts in protein,
we applied random forest regression model to predict the $\lambda$ values of contacts with seven features as predictors: inverse of contact (shortest) distance ($\langle d_c \rangle$), $P_{HB}$, inverse of variance of the contact distance ($\langle \delta d_{c}^2 \rangle$), summation volume of contacts $V_{\alpha\beta}$, residue type (RT$_\alpha$ and RT$_\beta$), and interaction type (IT).
The random 10-fold cross-validation of the model resulted in an $r^2$ value of 0.91, and the corresponding RMSE was $4.0 \times 10^{-4}$.
We predicted $\lambda_{\alpha,\beta}$ values with these features by using the regression model and compared with the actual $\lambda_{\alpha,\beta}$ values in [@fig:random-forest]a.
The model applied all data points resulted in an $r^2$ value of 0.94 and RMSE of $5.7 \times 10^{-4}$.
According to the ranking of feature importance shown in [@fig:random-forest]b, the top three most important features decreased in an order of $1/ \langle d_c^2 \rangle$ > $P_{HB}$ > $1/ \langle \delta d_{c}^2 \rangle$ > 0.15.
Interestingly, for non-covalent contacts containing both short-range (hydrogen bonded) contacts and van der Waals contacts, the most important feature is the averaged contact distance ($\langle 1/ d_c^2 \rangle$).
It is reasonable that two terms of heat current expression in @eq:eq1, i.e. (${\bm{r}_i}-{\bm{r}_j}$) and $\bm{F}_{ij}$, are highly related to the distance.
The role of $P_{HB}$, as the second most important feature, has been disscussed in @sec:role-of-hb.
For the third most important feature, $1/\langle \delta d_c^2 \rangle$,
a proportional correlation relationship between $1/ \langle \delta d_c^2 \rangle$ and energy transport rate was first introduced by David M. Leitner, et al. in HP36 protein,[@buchenberg2016;@reid2018] and was further applied in other proteins.[@leitner2019;@reid2020;@leitner2020a;@poudel2022;@poudel2023]
A pairwise correlation analysis of all features and $\lambda_{\alpha,\beta}$ values was performed and their Pearson correlation coefficients were shown in Figure S3.
Their correlation coefficient ($r$) values are all greater than 0.3 and the corresponding $**p$ values are all below 0.01, indicating a statistically significant relationship between each other.
Although the important features on energy transport through non-covalent contacts are explored in this study, due to the limited number of pairs,
a more comprehensive model that is valid and applicable to a broader range of non-covalent contacts are needed.
<!-- Although these three features are playing important role on $\lambda_{\alpha,\beta}$ values, the relationship between each other is worth to be explored further. -->
<!-- The linear correlation relationships of "$P_{HB}$-$\lambda_{\alpha,\beta}$" and "$1/ \langle \delta d_c^2 \rangle$-energy transfer rate" are only applied to the hydrogen bonded contacts. -->

