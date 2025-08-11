= Integer and Linear Programs

== Integer Programs (IP)
Solving is an NP-hard problem.

Consists of:

 - finite set of integer variables $V$
 - finite set of linear inequalities (constraints) over $V$
 - an objective function, which is a linear combination of $V$
 - Whether it should be minimized or maximized.

Example:
 - minimize $3 X_(O_1) + 4 X_O_2 + 5 X_O_3$ subject to
    - $X_O_4 gt.eq 1$
    - $X_O_1 + X_O_2 gt.eq 1$
    - $X_O_1 + X_O_3 gt.eq 1$
    - $X_O_2 + X_O_3 gt.eq 1$
    - $X_O_1, X_O_2, X_O_3, X_O_4 gt.eq 0$


== Linear Programs (LP)

Consist of the same as Integer programs, but with real valued variables and constraints.

Can be solved in polynomial time wrt. the number of constraints with SIMPLEX.

An LP can serve as an upper bound to an IP (LP relaxation).problem


== Standard Maximization/Minimization Problem

- Given a vector of objective coefficience $c=RR^(N times 1)$, bounds $b=RR^(N times 1)$, and coefficients $A=RR^(M times N)$

Optimize: Maximize $c^T x$ subect to $A x lt.eq b$ and $x gt.eq 0$

 - The *dual* to the maximization problem is the minimization (These are equal). 

Optimize: Minimize $b^T x$ subject to $A_T x gt.eq c$ and $x gt.eq 0$
