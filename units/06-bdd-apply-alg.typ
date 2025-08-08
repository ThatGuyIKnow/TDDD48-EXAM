#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure, style-algorithm
#show: style-algorithm

= BDD Transitions

== Transition BDD

$T_V(O) = or.big_(o in O) t_V(o)$

$._(t_V(O) = "pre"(o) and and.big_(v in V)("effcond"(v, e) or (v and not "effcond"(not v, e)) arrow.l.r v'))$

== Apply
#algorithm-figure("BDD Apply", {
  import algorithmic: *

  Procedure("Apply", [reached, $O$], {

       Assign[$B$][$T_V(O)$]
      
       Assign[$B$][$"bdd-intersection"(B, "reached")$]
      
    For($v in V$, {
      Assign[$B$][$"bdd-forget"(B, v)$]
    })

    For($v in V$, {
      Assign[$B$][$"bdd-rename"(B, v', v)$]
    })

    Return[B]
  })
})
 By then taking the union of the out and the previous $"reached"$, you get the $"reached"$ for the following timestep.
