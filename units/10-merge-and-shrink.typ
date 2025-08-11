#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure, style-algorithm
#show: style-algorithm

= Merge and Shrink
 - Idea: 
   - 1) Project $Pi$ to atomic projection
   - 2) Merge two of the resulting transition systems ($cal(T)|_P$) 
   - 3) Shrink combined $cal(T)'$ by abstracting more states
   - 4) Pick the result as the first transition system and go to step (2)

#algorithm-figure("Merge and Shrink", {
  import algorithmic: *

  Procedure("Merge-and-Shrink", [$Pi$, $Beta$], {
    Assign[$F$][$F(Pi)$]
    While($|F|>1$, {
      Assign["type"][$"pick-merge-or-shrink"(F)$]
      If($"type"="merge"$, {
        Assign[$cal(T)_1$][$"pick"(F)$]
        Assign[$cal(T)_2$][$"pick"(F\\{cal(T)_1})$]
        Assign[$F$][$(F\\{cal(T)_1, cal(T)_2}) union {cal(T)_1 times.circle cal(T)_2}$]
      })
      
      If($"type"="shrink"$, {
        Assign[$cal(T)$][$"pick"(F)$]
        Assign[$beta$][$"pick-abstraction"(Beta)$]
        Assign[$F$][$(F \\{cal(T)}) union {cal(T)^beta}$]
      
      })
    })
  
    Return[$F[0]$]
  })
})
  #image("../images/mas.png")

  == Factored Transition System (FTS or $F$)
   - A finite set $F={cal(T)_1, ..., cal(T)_n}$, where all share $ell$ and $"cost"(s)$.
   - FTS induced by $Pi$ is $F(Pi)={cal(T)^(pi_(v)) | v in V}$
   - $times.circle.big F tilde cal(T)(Pi)$ is the transition system that induced it.

== Merge Strategies
 - $f$-preserving strategy  
  - Combine nodes with identical $g "and" h$ value
   - _Rational_: Preserves $h$ and overall graph shape
  - Tie-breaking criterion, prefer merging high $g+h$
   - _Rational_: High values heuristic estimates are less likely to be explored by A\*, so it can be more inprecise.

== Merge and Shrink - Effective Shrink

- This is done by first converting the combined table (which is a cross product of two abstractions) into a linked list. And then...

#image("../images/mas-effective shrink.png")

== Merge and Shrink Lookup
 - Looking up the heuristic value in a MAS system requires looking up from first single variables and then into the larger merge, i.e.

#image("../images/mas-lookup.png")


== Label Reduction
=== Definition
 - A label reduction $angle.l lambda: L arrow L', c': L arrow RR^+ angle.r$, such that $ell in L, c'(lambda(ell)) lt.eq c(ell)$
 - The label-reduced transition system $cal(T)^(angle.l lambda, c' angle.r)=angle.l S, L', c', {angle.l s, lambda(ell), t angle.r | angle.l s, ell, t, angle.r in T}, s_0, S_* angle.r$
 
=== Properties
- $ell$ is alive in $F$ if all $cal(T)' in F$ have $ell$, dead otherwise
 - $ell$ locally subsumes $ell'$ in $cal(T)$ if for all transition $angle.l s, ell', t angle.r$ there is also $angle.l s, ell, t angle.r$
 - It also globally subsumes if this is true in all $cal(T) in F$
 - $ell$ and $ell'$ are locally equivilant if $ell$ locally subsumes $ell'$ and vice versa.
 - $ell$ and $ell'$ are $cal(T)$-combinable if there are locally equivilant in all transition systems $cal(T)' in F \\ {cal(T)}$


=== Exact Label Reduction
 - The label reduction is exact (No loss in information), if for all $ell_1, ell_2 in L$:
   - Either $ell_1$ or $ell_2$ globally subsumes the other  
   - $ell_1$ and $ell_2$ are $cal(T)$-combinable for some $cal(T) in F$



