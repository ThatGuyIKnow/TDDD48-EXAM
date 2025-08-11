= Abstraction
 - $s in gamma arrow.r alpha(s) in gamma_alpha$
 - $angle.l s, o, s' angle.r in cal(T) arrow.r angle.l alpha(s), o, alpha(s') angle.r in cal(T)_alpha$
- Abstraction are composable, i.e. $(beta compose alpha)$ is a valid abstraction.
- Abstraction are surjective.
- Abstraction uses coarsening/refinement terminology.
- $h^(beta compose alpha) lt.eq h^(alpha) lt.eq h^*$
 - $h^alpha$ is safe, goal-aware, admissible and consistent.
 #image("../images/abstraction.png", width: 80%)

== Additivity

- Orthogonal $alpha_1$ & $alpha_2$: If  $forall (t in cal(T)) (alpha_1(s)=alpha_2(t) ) or (alpha_2(s)=alpha_2(t))$, where $t=angle.l s, ell, t angle.r$
- Affect $alpha$ for $ell$, if $angle.l alpha(s), ell, alpha(t) angle.r$, where $alpha(s) eq.not alpha(t)$
- Also ortogonal if no label affects both abstractions.
- The sum of orthogonal $h^alpha$ is safe, goal-aware, admissible and consistent.

== Projections & Pattern Databases

 - A projection ($pi_P$) is a special kind of abstraction
 - $pi_P : S arrow S'$ is defined as$pi_P(s) := s|_P$ (where $s|_P(v):= s(v) " for all " v$)
  - I.e. we condition a state on a single variable assignment.
- The heuristic induced by $pi_P$, we call a PDB heuristic ($h^P$)
- Syntatic projections ($Pi|_P$), gives the projected planning task, by practically, removing the variables in the projection, from $angle.l P, I|_P, {o|_P, o in O}, gamma|_P angle.r$

#image("../images/synthatic_projection.png")

== PDB Lookup
- PDBs are precomputed before search.
- Is effective done via perfect hashing.
 - $N_i := Pi_(j=1)^(i-1)|"dom"(v_j)|$
 - $"PDB-index"(s) := Sigma_(i=1)^k N_i dot s(v_i)$
