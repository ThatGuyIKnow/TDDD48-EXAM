= Definition: Transition System
A *planning task* is a 4-tuple $Pi = angle.l V, I, O, gamma angle.r$

A *transition system* is a 6-tuple $T = ⟨S, L, c, T, s_0, S^⋆⟩$ where:

- $S$: finite set of states  
- $L$: finite set of transition labels  
- $c: L mapsto RR_0^+$: label cost function  
- $T subset.eq S times L times S$: transition relation  
- $s_0 in S$: initial state  
- $S^⋆ subset.eq  S$: set of goal states



#include "00.1-properties.typ"
#include "00.2-dom-set.typ"
#include "00.3-complexity.typ"
















































