
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
The histogram reveals that the hydrogen-bond contacts have the greatest values of $\lambda_{\alpha, \beta}$ among all the nonbonded native contacts, with a peak at around 2.5 $\times$ 10^–2^ $\mathrm{W{/} (m{\cdot}K)}$, followed by the electrostatic contacts with $\lambda_{\alpha, \beta}$ values ranging from $10^{-5}$ to $10^{-3}$ $\mathrm{W{/} (m{\cdot}K)}$ with having broader and less sharply peaked distributions than that of the hydrogen-bond contacts.
In the hydrophobic core of HP36, there are three $\pi$ stacking contacts: Phe7-Phe11 ($\lambda_{7,11}=4.9 \times 10^{-3}$), Phe7-Phe18 ($\lambda_{7,11}= 1.5 \times 10^{-3}$), and Phe11-Phe18 ($\lambda_{11,18}= 1.5 \times 10^{-3}$), with $\lambda_{\alpha, \beta}$ values comparable with hydrogen-bond contacts.
Hydrophobic contacts, constitute the majority of the nonbonded native contacts with a broad distribution ranging from $10^{-7}$ to $10^{-2}$ $\mathrm{W{/} (m{\cdot}K)}$.
Their $\lambda_{\alpha, \beta}$ values are relatively smaller, with peaks at around $5.9 \times 10^{-4}$ $\mathrm{W{/} (m{\cdot}K)}$.
In summary, the frequency histogram of the calculated local thermal conductivities for nonbonded native contacts exhibits a strikingly broad distribution, where different types of nonbonded contacts have significantly different contributions to thermal transport in the protein, with hydrogen bonds playing the dominant role.

## Peptide bonds? or nonbonded contacts?

<!-- ![Inter-residue thermal conductivity between adjacent residue pairs along the chain.](figures/non-bonded/line-intra-inter-lambda.png){#fig:inter_lambda width=70%} -->
![Nonbonded contacts that can compete with polypeptide chain.](figures/non-bonded/shortcuts.png){#fig:shortcuts width=50%}

There is an ongoing debate on the dominant pathway of thermal energy transport in proteins.[@deniz2021;@mizutani2022;@buchenberg2016]
To address the issue, we carried out site-selective heat current analysis ([@fig:histogram_lambda]).
As a result, the distribution of local thermal transport coefficients demonstrated substantial heterogeneity in protein thermal transport at microscopic scale:
The residue-wise $\lambda$ values are ranging from about 0.08 to 0.3 $\mathrm{W{/} (m{\cdot}K)}$,
while the inter-residue thermal conductivity between adjacent residue pairs along the chain ranges from about 0.01 to 0.08 $\mathrm{W{/} (m{\cdot}K)}$, indicating that the importance of the polypeptide chain as a major pathway of thermal transport in protein.
It should be noted that, however, that there are three exceptions $\lambda_{3, 6}=2.4 \times 10^{-2}$, $\lambda_{4, 15}=1.3 \times 10^{-2}$, and $\lambda_{5, 8}=2.1 \times 10^{-2}$, shown in @fig:shortcuts, where their $\lambda$ values exceed $10^{-2}$ $\mathrm{W{/} (m{\cdot}K)}$ being comparable to the local thermal transport coefficient for the pathways along the polypeptide chain.
It is worthy mentioning that the residue pairs, Ser3-Asp6 and Asp4-Arg15, have also been identified as having a relatively larger local energy diffusivities in the theoretical study by non-equilibrium MD simulations and master equation model,[@buchenberg2016]
indicating their possible roles to as "shortcuts" on the thermal transport network of the protein.

## Thermal energy transport through hydrogen bonds {#sec:role-of-hb}

![Correlation between the inter-residue thermal conductivity through hydrogen bonding and their hydrogen bond occurrence probability (_P_~HB~) during MD simulations. (a): all residue pairs in contact with hydrogen bonds; (b) residue pairs (i, i+4) with $\alpha$-helical hydrogen bonding.](figures/non-bonded/hb-capacity-lambda-all-ii4.png){#fig:hb_all_ii4}

The values of inter-residue thermal conductivity for residue pairs in contacts with hydrogen bonds are generally greater than those of the other types of nonbonded contacts (@fig:histogram_lambda), in line with the previous studies in the literature.[@mino2014;@deniz2021]
The linear regression analysis with a scatter plot between the values of inter-residue thermal conductivity ($\lambda_{\alpha,\beta}$) between hydrogen bonded residue pairs and their hydrogen bond occurrence probability (_P_~HB~) during the MD simulations ([@fig:hb_all_ii4]a) yielded a Pearson correlation coefficient of $r$ = 0.51 (> 0.3) and a **_p_-value of 0.007 ($\ll$ 0.05), indicating a positive correlation between them.

In an $\alpha$-helical protein, two types of hydrogen bonds are recognized:
The first type, known as central hydrogen bonds stabilize the helical structure with hydrogen bonds between the carbonyl oxygen (O) of residue $\alpha$ and the amino group (N-H) of residue $\alpha$+4.
The second type occurs either as a sidechain-sidechain or sidechain-mainchain hydrogen bond.
Miño et al. reported that the heat diffusion along the $\alpha$-helical polypeptide chain containing both types of hydrogen bonds is two times faster than those containing only the first type of hydrogen bonds, highlighting the important role of the second type of hydrogen bonds in proteins.[@mino2014]
To investigate the role of the first type of hydrogen bond in the heat transport in HP36, we selected the values of inter-residue thermal conductivity for 32 residue pairs between residue $\alpha$ and $\alpha$+4 (n=1, 2, ..., 32).
[@fig:hb_all_ii4]b.
The NMR structure of HP36 (PDB: 1VII) contains three alpha-helices, H1 (residues 4-8), H2 (residues 15-18), and H3 (residues 23-32).
We also observed transient formation of hydrogen bonds between ($\alpha$, $i+4$) residue pairs during MD simulations, in addition to those found in the NMR structure.
Thereby, 19 members of these hydrogen bonds are shown in @tbl:c_hb, among which 13 of the $\alpha$-helical hydrogen bonds were selected for the linear regression analysis ([@fig:hb_all_ii4]b).
In the previous study,[@mino2014] the heat diffusion along the $\alpha$-helical chain with both types of hydrogen bonds is twice faster than those with only the first type of hydrogen bonds, indicating the important role of the second type of hydrogen bonds in proteins.
To investigate the role of the first type of hydrogen bond in heat transport in HP36, we found that almost all hydrogen bonds between pairs of residue ($\alpha$, $\alpha$+4) were of the first type with only one exception between the mainchain of 16SER and the sidechain of 20ASN.

| acceptor residue number | acceptor atom | donorH residue number | donorH atom | donor atom | _P_~HB~ | acceptor type | donor type | averaged distance |
| :---------------------- | :------------ | :-------------------- | :---------- | :--------- | :------ | :------------ | :--------- | :---------------- |
| 3SER                    | O             | 7PHE                  | H           | N          | 0.60    | MC            | MC         | 2.05              |
| 4ASP                    | O             | 8LYS                  | H           | N          | 0.37    | MC            | MC         | 2.19              |
| 5GLU                    | O             | 9ALA                  | H           | N          | 0.21    | MC            | MC         | 2.32              |
| 7PHE                    | O             | 11PHE                 | H           | N          | 0.67    | MC            | MC         | 1.92              |
| 15ARG                   | O             | 19ALA                 | H           | N          | 0.53    | MC            | MC         | 2.04              |
| 22PRO                   | O             | 26GLN                 | H           | N          | 0.33    | MC            | MC         | 2.11              |
| 23LEU                   | O             | 27GLN                 | H           | N          | 0.55    | MC            | MC         | 1.99              |
| 24TRP                   | O             | 28ASN                 | H           | N          | 0.48    | MC            | MC         | 2.03              |
| 25LYS                   | O             | 29LEU                 | H           | N          | 0.54    | MC            | MC         | 2.00              |
| 26GLN                   | O             | 30LYS                 | H           | N          | 0.48    | MC            | MC         | 2.06              |
| 27GLN                   | O             | 31LYS                 | H           | N          | 0.59    | MC            | MC         | 2.00              |
| 28ASN                   | O             | 32GLU                 | H           | N          | 0.61    | MC            | MC         | 1.96              |
| 29LEU                   | O             | 33LYS                 | H           | N          | 0.37    | MC            | MC         | 2.12              |

: Hydrogen bond occurrence probability (_P_~HB~) and averaged shortest distance ($\langle d_c \rangle$) between residue $\alpha$ and $\alpha$+4. MC : mainchain, SC: sidechain. {#tbl:c_hb}

We conducted further analysis of the properties of the interaction between residue pairs (i, i+4) (@tbl:c_hb_ii4).
The values of inter-residue thermal conductivity for the pairs with no hydrogen bond are significantly smaller than those with hydrogen bonds.
Two special residues pairs (2LEU-6ASP and 21LEU-25LYS) did not form hydrogen bonds but had relatively larger values.
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

: Inter-residue thermal conductivity and hydrogen bond formation capacity _P_~HB~ between residue pair $\alpha$ and $\alpha$+4. Also the contact distance (shortest interatomic distance between the residue pair) is shown for each pair. {#tbl:c_hb_ii4}

![Distribution of average contact distance, the shortest interatomic distance between residue pairs in nonbonded native contacts. (a) all residue pairs in nonbonded native contacts; (b) residue pairs ($\alpha$, $\alpha$+4) in contact with $\alpha$-helical hydrogen bonds.](figures/non-bonded/histogram-contacts-all-ii4.png){#fig:histogram-contacts-all}

A smaller data set consisting of the inter-residue thermal conductivity and _P_~HB~ for residue pairs with $\alpha$-helical hydrogen bonds was used to fit a linear regression relationship, as shown in [@fig:hb_all_ii4]b.
The Pearson correlation coefficient and **_p_-value are 0.80 (> 0.3) and 0.001 ($\ll$ 0.05), respectively, indicating a stronger correlation than that for the all hydrogen bonded residue pairs.
The contact distance is supported to be a factor that can affect thermal transport properties.[@reid2018]
In addition, the histogram of all contact distance and contact distance for residue pairs of $\alpha$, $\alpha$+4 are shown in [@fig:histogram-contacts-all].
We can see that the contact distance of all residue pairs has a broad range (~ 2 - 8 Å) in [@fig:histogram-contacts-all]a.
It is worth mentioning that the contact distance exhibits a broad distribution (2 - 4 Å) for the dataset used in [@fig:hb_all_ii4]a, whereas the range of those for the smaller dataset used in [@fig:hb_all_ii4]b is limited within 2.1 $\pm$ 0.2 Å ([@fig:histogram-contacts-all]b).

## Important features of thermal transport through nonbonded contacts
<!-- ## Random Forest Analysis -->

![(a) Cross plot of $\lambda_{\alpha,\beta}$ and predicted $\lambda_{\alpha,\beta}$ of nonbonded contacts ($\langle d_c \rangle$ < 6) using random forest regression model; (b) VIP score plot of variable importance of variables. $\langle d_c^2 \rangle$: contact (shortest) distance of residue $\alpha$ and $\beta$; P~HB~: hydrogen bonds occurrence probability; $\langle \delta d_c^2 \rangle$: the variance in contacts distance; $V_{\alpha\beta}$: summation of the volumes of residue pair in contacts; RT$_\alpha$ (RT$_\beta$): residue type; IT: interaction type.](figures/non-bonded/random-forest_permutation_importance_.png){#fig:random-forest-L}

![(a) Cross plot of $\lambda_{\alpha,\beta}$ between those obtained from the MD simulations and those predicted using random forest model for nonbonded native contacts ($\langle d_c \rangle$ < 4) using random forest regression model; (b) VIP score plot of variable importance. $\langle d_c^2 \rangle$: contact (minimum interactomic) distance between residue $\alpha$ and $\beta$; P~HB~: hydrogen bonds occurrence probability; $\langle \delta d_c^2 \rangle$: the variance of contact distance; $V_{\alpha\beta}$: summation volume of contacts; RT$_\alpha$ (RT$_\beta$): residue type; IT: interaction type.](figures/non-bonded/random-forest_permutation_importance_smallerthan-0.0005_backup.png){#fig:random-forest-S}

To get a better understanding of the role of these features in the thermal transport in protein,
we applied the random forest regression model to predict the log$\lambda_{\alpha,\beta}$ values using seven features as predictors.
The comparison of calculated and predicted log$\lambda_{\alpha,\beta}$ together with the feature importances are shown in @fig:random-forest-S (dataset S) and @fig:random-forest-L (dataset L).
The model of _dataset L_ resulted in $r^2$-values of 0.95 and 0.89 for training set and testing set, and the corresponding RMSE were 0.24 and 0.4, respectively.
Only the contact distance made the considerable contributions to the log$\lambda_{\alpha,\beta}$ among all the feature variables.
The model of _dataset S_ resulted in $r^2$-values of 0.89 and 0.75 for traning set and testing set, and the corresponding RMSE were 0.10 and 0.18, respectively.
The top three most important features decreased in the order of $1/ \langle d_c^2 \rangle$ >$1/ \langle \delta d_{c}^2 \rangle$ > *P*~HB~.
After decreasing the dataset size, we recognized a slight decrease in the prediction performance (*R*^2^) for the training datasets, whereas a bigger decrease for testing set.
The difference in feature importances between the two datasets indicates that the contact distance plays a dominant role in determining the value of log$\lambda_{\alpha,\beta}$ for a wide range of contacts.
On the other hand, for short-distance contacts ($\langle d_c\rangle$ < 4 Å), both the average squared deviation ($\langle \delta d_c^2 \rangle$) and the hydrogen bonding occurrence probability (*P*~HB~) become increasingly important, in consistent with the scaling rule with the harmonic oscillator model for the hydrogen bonding contacts.[@buchenberg2016]
As a test, we used a much smaller dataset ($\langle d_c\rangle$ < 2.8 Å) for the analysis, leading to a very poor prediction performance due to the limitation of the data points.
<!-- If we take a look at the heat current expression in @eq:eqc1, we can find that two terms, i.e. (${\bm{r}_i}-{\bm{r}_j}$) and $\bm{F}_{ij}$, are closely associated with the contact distance. -->
For the smaller threshold for the contact distance, the proportion of hydrogen bonding contacts increase. 
Consequently, the importance of both $\langle \delta d_c^2 \rangle$ and P~HB~ becomes more pronounced.
Moreover, a pairwise correlation analysis of all features and $\lambda_{\alpha,\beta}$ values was performed and their Pearson correlation coefficients were shown in @fig:rf-correlation-heatmap.
We found that the correlation coefficient ($r$) values between $1/ \langle d_c^2 \rangle$, P~HB~, and $1/ \langle \delta d_{c}^2 \rangle$ were all greater than 0.3 and the corresponding **_p_ values are all below 0.01, indicating a statistically significant correlation between them.

![Correlation map. (a) Pairwise Pearson correlation coefficients, $r$; (b) _p_-values.](figures/non-bonded/rf-correlation-heatmap.png){#fig:rf-correlation-heatmap}

Although this study has examined the significance of feature variables that capture the static and dynamic properties of proteins in thermal transport through nonbonded contacts, it is important to note that the analysis was conducted on a limited number of pairs.
Therefore, a more comprehensive model is required to ensure its validity and applicability to a broader range of nonbonded contacts in other proteins.
