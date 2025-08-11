
#let hmax = $h^"max"$
#let hadd = $h^"add"$
#let hplus = $h^"+"$
#let hff = $h^"FF"$
#let hcut = $h^"LM-Cut"$



= Landmarks
 - Fact landmark: This must be visited at least once
 - Disjunctive Action: One action from the set must be performed
 - Network flow: Fact consumption should be balanced.

 == Relaxed Task Graph Landmarks
  - Causal Landmark $lambda$: for $I$ if $gamma models lambda$ OR if for all plans $angle.l o_1, ..., o_n angle.r$ at least one $"pre"(o_i) models lambda$
  - Causal fact landmark: Same as above, but $lambda:=v$
  

  - To calculate the RTG landmarks, first instantiate all nodes with all potential landmarks. Then perform this on RTG
  
  $"LM"(n)={n} inter.big_(n' arrow n in A) "LM"(n') " if type"(n)=or$

  $"LM"(n)={n} union.big_(n' arrow n in A) "LM"(n') " if type"(n)=and$

  #image("../images/rtg-landmark.png")


== Minimum Hitting Set
 - The minimum hitting set, the minimal cost set of operators such that a for a set of set of operators, each set contains one of the operators selected.
 - This is relevant for combining disjunctive action landmarks, which is not admissible if additively combined.


== LM-Cut

=== Justification Graph

 - Precondition choice function: $P: O arrow V$, maps any operator in a task $Pi$ to one of it's preconditions.
 - Justification graph: $angle.l V, E := {angle.l P(o), a angle.r | o in O, a in "add"(o)} angle.r$

 #image("../images/justification-graph.png")

 - *Cut* ($C subset.eq E$): A subset of edges, such that ALL paths $i attach(arrow, t: *) g$ contains $e in C$. Doesn't have to include all.

== LM-Cut Algorithm

Initialize $hcut(I):=0$. Then iterate:
 - Compute #hmax using a RTG. Stop if $hmax(g) = 0$
 - Compute Justification graph for the $P$/pcf that chooses the precondition with the MAXIMAL #hmax value.
 - Determine goal zone $V_g$ (i.e. all nodes with a zero cost path to $g$).
 - Compute the cut $L$ that contains labels of all edges $angle.l v, o, v' angle.r$ such that $v in.not V_g, v' in V_g$, and v CAN be reached from $i$ without traversing $V_g$. _It is guaranteed that $"cost"(L)>0$_
 - Increase $hcut(I)$ by $"cost"(L)$ (i.e. the cost of the cut).
 - Decrease $"cost"(o)$ by $"cost"(L)$ for all $o in L$.


 #image("../images/lmcut.png")
