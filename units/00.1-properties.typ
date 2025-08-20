== Forms and Properties

=== Heuristics

 - Admissable: $h(s) <= h^*(s)$
 - Consistent: $h(s) <= c(s, s') + h(s')$
 - Goal aware: $h(s in S^*)=0$
 - Safe: $h(s)= infinity arrow.r h^*(s)=infinity $
=== Task forms and Misc.

 - Positive normal form: All ops and goal are positive and flat
   - $o$ is positive if $"pre"(o)$ and $"effcond"(o)$ are positive
   - A logical proposition is positive if $not$ doesn't appear (including $arrow.l$ and $arrow.l.r$
   - $o$ is flat, if $"eff"(o)$ is flat (i.e. contains only atomics or $(x triangle.r y)$)

 - STRIPS: If all ops are STRIPS and goal follows: $and.big_(v in V) v$
   - $o$ is STRIPS if $"pre"(o)$ follows same form, and $"eff"(o)$ is atomic.

 - i-g Form: STRIPS form. ${i,g} subset.eq V$. $I:={i}$. \ $gamma:={g}$. $forall(o in O)(|"pre"(o)| > 0)$
    - Any task can be made i-g form trivially, if already STRIPS.

 - Transition Normal Form (TNF): $forall(o in O)("vars"("eff"(o)) = "vars"("pre"(o)))$ and $"vars"(gamma) = V$.
    - This can be achieved by 1) add auxiliary $u$ to every $"dom"(v)$
    - 2) For each variable and value, add an operator than converts it to $u$ for zero cost
    - 3) For all $o$, if a variable is in $"pre"$, but not in $"eff"$ add it with the same value. If $v$ in $"eff"$ but not in $"pre"$, add $v=u$ in $"pre"$

 - Algorithm is *sound* $arrow.r$ plans are correct, and "unsolveable" answer is correct.
