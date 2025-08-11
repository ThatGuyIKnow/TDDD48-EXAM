== Forms and Properties

=== Heuristics

 - Admissable: $h(s) <= h^*(s)$
 - Consistent: $h(s) <= c(s, s') + h(s')$
 - Goal aware: $h(s in S^*)=0$
 - Safe: $h(s)= infinity arrow.r h^*(s)=infinity $
=== Task forms and Misc.

 - Positive normal form: All ops and goal are positive and flat
   - $o$ is positive if $"pre"(o)$ and $"eff"(o)$ are positive
   - A logical proposition is positive if $not$ doesn't appear (including $arrow.l$ and $arrow.l.r$
   - $o$ is flat, if $"eff"(o)$ is flat (i.e. contains only atomics or $(x triangle.r y)$)

 - STRIPS: If all ops are STRIPS and goal follows: $and.big_(v in V) v$
   - $o$ is STRIPS if $"pre"(o)$ follows same form, and $"eff"(o)$ is atomic.

 - i-g Form: STRIPS form. ${i,g} subset.eq V$. $I:={i}$. \ $gamma:={g}$. $forall(o in O)(|"pre"(o)| > 0)$
    - Any task can be made i-g form trivially, if already STRIPS.

 - Algorithm is *sound* $arrow.r$ plans are correct, and "unsolveable" answer is correct.
