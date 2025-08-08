= BDD Operators
== Conditioning

Conditioning variable $v$ in formula $phi$ to $T$ or $F$:

- $phi [T/v]$ or $phi [F/v]$: restrict $v$ to a given value
- Time: $O(|phi|)$

== Forgetting

Forgetting (existential abstraction): allow both $v = T$ and $v = F$ and eliminate $v$.

- On formulas: $exists v phi = phi[T/v] or phi[F/v]$
- On sets: $exists v S = S[T/v] union S[F/v]$
- Time: $O(|phi|)$

== Renaming

Renaming $X$ to $Y$ in formula $phi$, written $phi[X arrow.r Y]$:
replace all $X$ by $Y$ in $phi$ ($Y$ not present in $phi$).
- Time: $O(|phi|)$
