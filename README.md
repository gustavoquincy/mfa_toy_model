# Toy model of metabolic flux analysis(MFA) based on randomized initial condition

Suppose a reaction network made of metabolites of three kinds, nutrients(the input of the network), intermediates(the main reactionary bulk) and the products(the output), which can be subsequently used by the organisum, and assume the equilibrium of metabolites, $Af = 0$, where $A_{m \times r}$ is the reactionary matrix records the stoichiometry of individual reactions, $f_{r \times 1}$ is the flux associated with reactions. 

The cell would optimize some fluxes out of intermediates to make products, and growth rate reads $\mu = H(f_{cell})$. Suppose virus plasmids in the reaction network, and then some intermediates would be utilized by the "selfish" plasmids to make products for their own good, then the balance of the network will be shifted, the growth is $\mu' = H'(f_{cell}))$.

We'll show with numerical simulations that how the ratio $\mu'/\mu$, which suggests the robustness of the host, would be affected by the host genome size and the ratio between plasmid genome size and host genome size $\phi$. 

The quantitative relation between cell growth and fluxes is arbitary, here we consider the linear combination of individual flux converting intermediates to products, some sigmoidal regime is also plausible.

For the implementation, GPU is good at linear arithemetics, CUDA and the Thrust libray is used to implement the toy model.