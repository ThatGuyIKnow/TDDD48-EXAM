= STRIPS Regression

Let $phi = phi_1 and ... and phi_n$ be a conjunction of atoms, 
and $o$'s add effects be $\{a_1,...,a_k\}$, and delete effects $\{d_1,...,d_l\}$  

$"sregr"(phi, o) :=  cases(

  bot "if" exists (i, j) phi_i = d_j,  

  "pre"(o) and ({phi_1,...,phi_n} \/ {a_1,...,a_k}) "otherwise"
)$


