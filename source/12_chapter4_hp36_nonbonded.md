
\newpage

# Heat and energy transfer through nonbonded contacts{#cha4}

## Energy transfer and heat transfer

![Correlation of $\Lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$.](figures/non-bonded/heat-energy.png){#fig:lambda_energy width=50%}

In the previous studies, we explored the energy transport network in proteins based on the time-integrated ACF of the _inter-residue energy flow_ ($G_{\alpha, \beta}$).[@ishikura2006;@leitner2010;@ishikura2015;@ota2019;@poudel2020]
Considering the similarity between the interatomic current of energy (@eq:eqd5) and heat (@eq:eqd8), we are allowed to take a similar approach.
To compare the time-integrated ACF of inter-residue current of heat with that of energy, we showed a scatter plot between $\Lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$ in [@fig:lambda_energy] and carried out a linear regression analysis.
As expected, the Pearson correlation analysis showed a statistically significant correlation between $\Lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$, with *r* = 0.97, ***p* $\ll$ 0.01 (8.0 $\times$ 10^–173^).
The estimated linear regression model is as follows: $\log{\Lambda_{\alpha, \beta}} = 0.74 \times \log{{G}_{\alpha, \beta}} + 0.06$ with *R*^2^ = 0.95.
The high similarity between $\Lambda_{\alpha, \beta}$ and $G_{\alpha, \beta}$ implies that the network patterns of energy transport and heat transport should also be similar to each other.

## Interaction type dependence

![Frequency histogram of local thermal conductivity in HP36. It shows the occurrence of $\lambda_{\alpha,\beta}$ for different types of residue pairs ($\alpha,\beta$) in nonbonded native contacts, together with the residue-wise thermal conductivity and those between adjacent residue pairs along the chain. For comparison, the value of the thermal conductivity of the entire HP36 molecule is indicated by the red dashed line, as well as that of bulk water by the black dashed line.[@wang2023]](figures/non-bonded/histogram-lambda-after.png){#fig:histogram_lambda}

[@fig:histogram_lambda] shows the frequency histogram of the calculated local thermal conductivities in HP36.
The histogram reveals that the hydrogen-bond contacts have the greatest values of $\lambda_{\alpha, \beta}$ among all the nonbonded native contacts, with a peak at around 2.5 $\times$ 10^–2^ W m^–1^ K^–1^, followed by the electrostatic contacts with $\lambda_{\alpha, \beta}$ values ranging from $10^{-5}$ to $10^{-3}$ W m^–1^ K^–1^ with having broader and less sharply peaked distributions than that of the hydrogen-bond contacts.
In the hydrophobic core of HP36, there are three $\pi$ stacking contacts: Phe7-Phe11 ($\lambda_{7,11}=4.9 \times 10^{-3}$), Phe7-Phe18 ($\lambda_{7,11}= 1.5 \times 10^{-3}$), and Phe11-Phe18 ($\lambda_{11,18}= 1.5 \times 10^{-3}$), with $\lambda_{\alpha, \beta}$ values comparable with hydrogen-bond contacts.
Hydrophobic contacts, constitute the majority of the nonbonded native contacts with a broad distribution ranging from $10^{-7}$ to $10^{-2}$ W m^–1^ K^–1^.
Their $\lambda_{\alpha, \beta}$ values are relatively smaller, with peaks at around $5.9 \times 10^{-4}$ W m^–1^ K^–1^.
In summary, the frequency histogram of the calculated local thermal conductivities for nonbonded native contacts exhibits a strikingly broad distribution, where different types of nonbonded contacts have significantly different contributions to thermal transport in the protein, with hydrogen bonds playing the dominant role.

## Peptide bonds? or nonbonded contacts?

![Inter-residue thermal conductivity between adjacent residue pairs along the chain.](figures/non-bonded/line-intra-inter-lambda.png){#fig:inter_lambda width=70%}

There is an ongoing debate on the dominant pathway of thermal energy transport in proteins.[@deniz2021;@mizutani2022;@buchenberg2016]
To address the issue, we carried out site-selective heat current analysis ([@fig:histogram_lambda]).
As a result, the distribution of local thermal transport coefficients demonstrated substantial heterogeneity in protein thermal transport at microscopic scale:
The residue-wise $\lambda$ values are ranging from about 0.08 to 0.3 W m^–1^ K^–1^,
while the inter-residue thermal conductivity between adjacent residue pairs along the chain ranges from about 0.01 to 0.08 W m^–1^ K^–1^, indicating that the importance of the polypeptide chain as a major pathway of thermal transport in protein.
It should be noted that, however, that there are three exceptions $\lambda_{3, 6}=2.4 \times 10^{-2}$, $\lambda_{4, 15}=1.3 \times 10^{-2}$, and $\lambda_{5, 8}=2.1 \times 10^{-2}$, where their $\lambda$ values exceed $10^{-2}$ W m^–1^ K^–1^ being comparable to the local thermal transport coefficient for the pathways along the polypeptide chain.
It is worthy mentioning that the residue pairs, Ser3-Asp6 and Asp4-Arg15, have also been identified as having a relatively larger local energy diffusivities in the theoretical study by non-equilibrium MD simulations and master equation model,[@buchenberg2016]
indicating their possible roles to as "shortcuts" on the thermal transport network of the protein.

## Thermal energy transport through hydrogen bonds {#sec:role-of-hb}

![$\lambda_{\alpha,\beta}$ values of contacts forming hydrogen bonds and their hydrogen bond occurrence probability (_P_~HB~) during MD simulations. (a): all contacts forming hydrogen bonds; (b) contacts between residue $\alpha$ and $\alpha+4$.](figures/non-bonded/hb-capacity-lambda-all-ii4.png){#fig:hb_all_ii4}

As can be seen in [@fig:histogram_lambda], the $\lambda_{\alpha, \beta}$ values of contacts through hydrogen bonds are generally greater than that of other nonbonded contacts.
The hydrogen bonds are also found to facilitate the energy transport in proteins.[@mino2014;@deniz2021]
A scatter plot between the values of $\lambda_{\alpha,\beta}$ and their hydrogen bond occurrence probability during the MD simulations was shown in [@fig:hb_all_ii4]a.
The linear regression analysis revealed a Pearson correlation coefficient of $r$ = 0.51 (> 0.3) and a **_p_-value of 0.007 ($\ll$ 0.05), indicating a significant correlation between $\lambda_{\alpha,\beta}$ and hydrogen bond occurrence probability of residue pairs.

In proteins constructed in an $\alpha$-helical manner, two types of hydrogen bonds can be distinguished.
The first type, known as central hydrogen bonds, plays a key role in stabilizing the helical structure by forming hydrogen bonds between the amino group (N-H) of one amino acid and the carbonyl oxygen (O) of a second amino acid, usually occurring between residues $\alpha$ to $\alpha$+4 in the helical regions.
The second type of hydrogen bonds is formed by the sidechains of the involved amino acids, either between sidechain and sidechain or between sidechain and mainchain.
Miño et al. showed that the heat diffusion along $\alpha$-helices containing both types of hydrogen bonds is twice faster than those containing only the first type of hydrogen bonds, highlighting the important role of the second type of hydrogen bonds in proteins.[@mino2014]
To investigate the role of the first type of hydrogen bond in heat transport in HP36, we classified and plotted the $\lambda$ values of 32 residue pairs between residue i and i+4 (n=1, 2, ..., 32), as shown in [@fig:hb_all_ii4]b.
In HP36, the crystal structure (PDB: 1VII) reveals the presence of three alpha-helices, H1 (residues 4-8), H2 (residues 15-18), and H3 (residues 23-32), which should give rise to eight residue pairs that form the first type of hydrogen bonds.
However, there were some residue pairs that did not form the first type of hydrogen bonds in the crystal structure but were observed to form such bonds in MD simulations.
These pairs were classified as non-helical residue pairs but formed hydrogen bonds.
In the previous studies[@mino2014], the heat diffusion along $\alpha$-helices containing both types of hydrogen bonds is twice faster than those containing only the first type of hydrogen bonds, highlighting the important role of the second type of hydrogen bonds in proteins.
To investigate the role of the first type of hydrogen bond in heat transport in HP36, we classified and plotted the $\lambda$ values of 32 residue pairs between residue i and i+4 (n=1,2, ..., 32), as shown in [@fig:hb_all_ii4]b.
In HP36, the crystal structure (PDB: 1VII) reveals the presence of three alpha-helices, H1 (residues 4-8), H2 (residues 15-18), and H3 (residues 23-32), which should give rise to eight residue pairs that form the first type of hydrogen bonds.
However, there were some residue pairs that did not form the first type of hydrogen bonds in the crystal structure but were observed to form such bonds in MD simulations.
These pairs were classified as non-helical residue pairs but formed hydrogen bonds.
Interestingly, the $\lambda$ of non-helical residue pairs that did not have the opportunity to form hydrogen bonds was significantly lower than that of helical residue pairs.

For a detailed analysis of the role of hydrogen bonds, we focus on the contacts of residue $\alpha$ and $\alpha$+4.
In HP36, the crystal structure (PDB: 1VII) reveals the presence of three $\alpha$-helices, H1 (residues 4-8), H2 (residues 15-18), and H3 (residues 23-32), which should give rise to eight residue pairs that form the first type of hydrogen bonds.
However, we observed some residue pairs that did not form the first type of hydrogen bonds in the crystal structure but were observed to form such bonds in MD simulations, and they were listed in  @tbl:c_hb.
After the statistical analysis of the hydrogen bonds formation from MD trajectories, it was found that almost all hydrogen bonds of contacts between residue $\alpha$ and $\alpha$+4 were the first type, with one exception of the contact between 16SER and 20ASN, where they also formed hydrogen bonds between mainchain and sidechain.

| acceptor number | acceptor atom | donorH number | donorH atom | donor atom | _P_~HB~ | acceptor type | donor type |
| :-------------- | :------------ | :------------ | :---------- | :--------- | :------ | :------------ | :--------- |
| 3               | O             | 7             | H           | N          | 0.6     | MC            | MC         |
| 4               | O             | 8             | H           | N          | 0.37    | MC            | MC         |
| 5               | O             | 9             | H           | N          | 0.21    | MC            | MC         |
| \textcolor{red}{6}               | O             | 10            | H           | N          | 0.47    | MC            | MC         |
| 7               | O             | 11            | H           | N          | 0.67    | MC            | MC         |
| \textcolor{red}{8}               | O             | 12            | H           | N          | 0.13    | MC            | MC         |
| \textcolor{red}{14}              | O             | 18            | H           | N          | 0.58    | MC            | MC         |
| 15              | O             | 19            | H           | N          | 0.53    | MC            | MC         |
| \textcolor{red}{16}              | O             | 20            | HD21        | ND2        | 0.18    | MC            | SC         |
| \textcolor{red}{16}              | O             | 20            | H           | N          | 0.07    | MC            | MC         |
| 22              | O             | 26            | H           | N          | 0.33    | MC            | MC         |
| 23              | O             | 27            | H           | N          | 0.55    | MC            | MC         |
| 24              | O             | 28            | H           | N          | 0.48    | MC            | MC         |
| 25              | O             | 29            | H           | N          | 0.54    | MC            | MC         |
| 26              | O             | 30            | H           | N          | 0.48    | MC            | MC         |
| 27              | O             | 31            | H           | N          | 0.59    | MC            | MC         |
| 28              | O             | 32            | H           | N          | 0.61    | MC            | MC         |
| 29              | O             | 33            | H           | N          | 0.37    | MC            | MC         |
| \textcolor{red}{30}              | O             | 34            | H           | N          | 0.05    | MC            | MC         |

: Hydrogen bond formation capacity _P_~HB~ between residue $\alpha$ and $\alpha+4$. MC means mainchain and SC means sidechain. {#tbl:c_hb}

Their $\lambda_{\alpha,\alpha+4}$ values, interaction types, their _P_~HB~ and contacts distances are listed in @tbl:c_hb_ii4.
The $\lambda_{\alpha,\beta}$ values for contacts with no hydrogen bonds are significantly lower, i.e. an order of magnitude lower, than those with hydrogen bonds.
Two special residues pairs (2LEU-6ASP and 21LEU-25LYS) did not form hydrogen bonds but had relatively higher $\lambda_{\alpha,\beta}$ values.
This may be because their interactions are stronger than those contacts with no hydrogen bonds, which are all hydrophobic residues with weak Van der Waals interactions.

| Residue Number | Residue Name | Residue Number | Residue Name | _P_~HB~ | Interaction Type | $\lambda_{\alpha, \alpha+4}$ | Contacts Distance (\AA) |
| :------------- | :----------- | :------------- | :----------- | :------ | :--------------- | :--------------------------- | :---------------------- |
| 1              | MET          | 5              | GLU          | 0       | hydrophobic      | 1.99$\times 10^{-4}$         | 8.33                    |
| 2              | LEU          | 6              | ASP          | 0       | charged          | 3.29$\times 10^{-3}$         | 3.08                    |
| 3              | SER          | 7              | PHE          | 0.6     | hydrogen bonds   | 3.72$\times 10^{-3}$         | 2.05                    |
| 4              | ASP          | 8              | LYS          | 0.37    | hydrogen bonds   | 4.33$\times 10^{-3}$         | 2.19                    |
| 5              | GLU          | 9              | ALA          | 0.21    | hydrogen bonds   | 1.90$\times 10^{-3}$         | 2.32                    |
| 6              | ASP          | 10             | VAL          | 0.47    | hydrogen bonds   | 6.16$\times 10^{-3}$         | 2.10                    |
| 7              | PHE          | 11             | PHE          | 0.67    | pi stacking      | 4.91$\times 10^{-3}$         | 1.92                    |
| 8              | LYS          | 12             | GLY          | 0.13    | hydrogen bonds   | 7.40$\times 10^{-3}$         | 2.34                    |
| 9              | ALA          | 13             | MET          | 0       | hydrophobic      | 4.29$\times 10^{-5}$         | 5.07                    |
| 10             | VAL          | 14             | THR          | 0       | hydrophobic      | 8.14$\times 10^{-7}$         | 7.83                    |
| 11             | PHE          | 15             | ARG          | 0       | hydrophobic      | 4.31$\times 10^{-5}$         | 6.08                    |
| 13             | MET          | 17             | ALA          | 0       | hydrophobic      | 2.42$\times 10^{-3}$         | 2.83                    |
| 14             | THR          | 18             | PHE          | 0.58    | hydrogen bonds   | 2.10$\times 10^{-3}$         | 1.98                    |
| 15             | ARG          | 19             | ALA          | 0.53    | hydrogen bonds   | 3.52$\times 10^{-3}$         | 2.04                    |
| 16             | SER          | 20             | ASN          | 0.18    | hydrogen bonds   | 4.06$\times 10^{-3}$         | 2.64                    |
| 17             | ALA          | 21             | LEU          | 0       | hydrophobic      | 5.66$\times 10^{-4}$         | 2.85                    |
| 18             | PHE          | 22             | PRO          | 0       | hydrophobic      | 1.65$\times 10^{-5}$         | 5.70                    |
| 19             | ALA          | 23             | LEU          | 0       | hydrophobic      | 1.95$\times 10^{-5}$         | 6.67                    |
| 21             | LEU          | 25             | LYS          | 0       | charged          | 2.23$\times 10^{-3}$         | 2.56                    |
| 22             | PRO          | 26             | GLN          | 0.33    | hydrogen bonds   | 3.27$\times 10^{-3}$         | 2.11                    |
| 23             | LEU          | 27             | GLN          | 0.55    | hydrogen bonds   | 4.95$\times 10^{-3}$         | 1.99                    |
| 24             | TRP          | 28             | ASN          | 0.48    | hydrogen bonds   | 3.67$\times 10^{-3}$         | 2.03                    |
| 25             | LYS          | 29             | LEU          | 0.54    | hydrogen bonds   | 3.89$\times 10^{-3}$         | 2.00                    |
| 26             | GLN          | 30             | LYS          | 0.48    | hydrogen bonds   | 4.32$\times 10^{-3}$         | 2.06                    |
| 27             | GLN          | 31             | LYS          | 0.59    | hydrogen bonds   | 4.74$\times 10^{-3}$         | 2.00                    |
| 28             | ASN          | 32             | GLU          | 0.61    | hydrogen bonds   | 4.83$\times 10^{-3}$         | 1.96                    |
| 29             | LEU          | 33             | LYS          | 0.37    | hydrogen bonds   | 2.70$\times 10^{-3}$         | 2.12                    |
| 30             | LYS          | 34             | GLY          | 0.05    | hydrogen bonds   | 2.23$\times 10^{-3}$         | 2.62                    |
| 31             | LYS          | 35             | LEU          | 0       | hydrophobic      | 2.02$\times 10^{-4}$         | 3.9                     |
| 32             | GLU          | 36             | PHE          | 0       | hydrophobic      | 3.46$\times 10^{-4}$         | 5.72                    |

: $\lambda_{\alpha,\beta}$ values and hydrogen bond formation capacity _P_~HB~ between residue $\alpha$ and $\alpha+4$. {#tbl:c_hb_ii4}

![Averaged the shortest distance distribution of nonbonded contacts. (a) all contacts; (b) contacts between residue $\alpha$ and $\alpha+4$.](figures/non-bonded/histogram-contacts-all-ii4.png){#fig:histogram-contacts-all}


A smaller data set consisting of $\lambda_{\alpha,\alpha+4}$ and _P_~HB~ with hydrogen bonds formed was used to fit a linear regression relationship, as shown in [@fig:hb_all_ii4]b.
The Pearson correlation coefficient and **_p_-value are 0.80 (> 0.3) and 0.001 ($\ll$ 0.05), respectively, indicating a stronger correlation relationship than for all hydrogen bond contacts.
The contact distance is a factor that can affect thermal transport through contacts.[@reid2018] For the data set used in [@fig:hb_all_ii4]a, their distance varied at a relatively broad range (2 - 4 Å) compared to the smaller data set used in [@fig:hb_all_ii4]b, where the distances of all contacts were 2.1 $\pm$ 0.2 Å (@fig:histogram-contacts-all).

<!-- $\pi$ stacking: Phe7-Phe11, Phe11-Phe18, Phe7-Phe18.
only Phe7-Phe11 has the largest $\lambda$, while Phe7-18 and Phe11-18 have a same $\lambda$ with no hydrogen bonds for them. -->

## Important features in thermal transport through nonbonded contacts
<!-- ## Random Forest Analysis -->

![(a) Cross plot of $\lambda_{\alpha,\beta}$ and predicted $\lambda_{\alpha,\beta}$ of nonbonded contacts ($\langle d_c^ \rangle$ < 8) using random forest regression model; (b) VIP score plot of variable importance of variables. $\langle d_c^2 \rangle$: contact (shortest) distance of residue $\alpha$ and $\beta$; P~HB~: hydrogen bonds occurrence probability; $\langle \delta d_c^2 \rangle$: the variance in contacts distance; $V_{\alpha\beta}$: summation of the volumes of residue pair in contacts; RT$_\alpha$ (RT$_\beta$): residue type; IT: interaction type.](figures/non-bonded/random-forest_permutation_importance_.png){#fig:random-forest-L}

![(a) Cross plot of $\lambda_{\alpha,\beta}$ between those obtained from the MD simulations and those predicted using random forest model for nonbonded native contacts ($\langle d_c^ \rangle$ < 4) using random forest regression model; (b) VIP score plot of variable importance. $\langle d_c^2 \rangle$: contact (minimum interactomic) distance between residue $\alpha$ and $\beta$; P~HB~: hydrogen bonds occurrence probability; $\langle \delta d_c^2 \rangle$: the variance of contact distance; $V_{\alpha\beta}$: summation volume of contacts; RT$_\alpha$ (RT$_\beta$): residue type; IT: interaction type.](figures/non-bonded/random-forest_permutation_importance_smallerthan-0.0005_backup.png){#fig:random-forest-S}

To get a better understanding of the role of these features in the thermal transport in protein,
we applied the random forest regression model to predict the log$\lambda_{\alpha,\beta}$ values using seven features as predictors.
The comparison of calculated and predicted log$\lambda_{\alpha,\beta}$ together with the feature importances are shown in @fig:random-forest-S (dataset S) and @fig:random-forest-L (dataset L).
The model of _dataset L_ resulted in $r^2$-values of 0.95 and 0.89 for training set and testing set, and the corresponding RMSE were 0.24 and 0.4, respectively.
Only the contact distance made the considerable contributions to the log$\lambda_{\alpha,\beta}$ among all the feature variables.
The model of _dataset S_ resulted in $r^2$-values of 0.89 and 0.75 for traning set and testing set, and the corresponding RMSE were 0.10 and 0.18, respectively.
The top three most important features decreased in the order of $1/ \langle d_c^2 \rangle$ >$1/ \langle \delta d_{c}^2 \rangle$ > P~HB~.
After decreasing the dataset size, we recognized a slight decrease in the prediction performance (R^2^) for the training datasets, whereas a bigger decrease for testing set.
The difference in feature importances between the two datasets indicates that the contact distance plays a dominant role in determining the value of log$\lambda_{\alpha,\beta}$ for a wide range of contacts.
On the other hand, for short-distance contacts ($\langle d_c\rangle$ < 4 Å), both the average squared deviation ($\langle \delta d_c^2 \rangle$) and the hydrogen bonding probability (P~HB~) become increasingly important, in consistent with the scaling rule with the harmonic oscillator model for the hydrogen bonding contacts.[@buchenberg2016]
As a test, we used a much smaller dataset ($\langle d_c\rangle$ < 2.8 Å) for the analysis, leading to a very poor prediction performance due to the limitation of the data points.
<!-- If we take a look at the heat current expression in @eq:eqc1, we can find that two terms, i.e. (${\bm{r}_i}-{\bm{r}_j}$) and $\bm{F}_{ij}$, are closely associated with the contact distance. -->
For the smaller threshold for the contact distance, the proportion of hydrogen bonding contacts increase. 
Consequently, the importance of both $\langle \delta d_c^2 \rangle$ and P~HB~ becomes more pronounced.
Moreover, a pairwise correlation analysis of all features and $\lambda_{\alpha,\beta}$ values was performed and their Pearson correlation coefficients were shown in @fig:rf-correlation-heatmap.
We found that the correlation coefficient ($r$) values between $1/ \langle d_c^2 \rangle$, P~HB~, and $1/ \langle \delta d_{c}^2 \rangle$ were all greater than 0.3 and the corresponding **_p_ values are all below 0.01, indicating a statistically significant correlation between them.

![Correlation map. (a) Pairwise Pearson correlation coefficients, $r$; (b) _p_-values.](figures/non-bonded/rf-correlation-heatmap.png){#fig:rf-correlation-heatmap}

Although this study has examined the significance of feature variables that capture the static and dynamic properties of proteins in thermal transport through nonbonded contacts, it is important to note that the analysis was conducted on a limited number of pairs.
Therefore, a more comprehensive model is required to ensure its validity and applicability to a broader range of nonbonded contacts in other proteins.
