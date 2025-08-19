= Cost Partitioning
- Is admissible.
- Principal: Distribute cost of operators between $h$ such that $sum_n^(i=1) "cost"_i(o) lt.eq "cost"(o) " for all " o in O$
- Also called the *cost partitioning constraint*
- A general cost partitioning the upholds this constraint is admissible.

Example:
 - zero-one cost partitioning: Set cost to one in one abstraction and zero everywhere else
 - uniform cost partitioning: Distribute the cost equally among abstractions

 #image("../images/zeroonecostpartitioning.png", width: 50%)


 == Saturated Cost Partitioning

  - mscf: minimum saturated cost function
  - It is the DIFFERENCE in heuristic estimation for state $s$ and state $t$.
  $"mscf"(o) = 
  max(0,  attach(attach(limits(limits(max)_o), 
     b: alpha(s) arrow alpha(t)))(h^alpha (s) - h^alpha (t)))$

*Algorithm*

 -_Iterate_
  - Pick a heuristic $h_i$ that hasn't been picked. Terminate if none is left.
  - Compute $h_i$ given current cost
  - Compute $"scf"_i$ (ideally $"mscf"_i$) for $h_i$
  - Decrease $"cost"(o)$ by $"scf"_i (o)$ for all $o$
 - Heuristic is the sum of all scf. I.e. sum all decreases.


 Example: 

 #image("../images/saturatedcostpartitioning.png")


 == Relation to LM-Cut

 - LM-Cut computes SCP over disjunctive action landmarks
 abstraction

 - Let $Pi$ be a planning task and $cal(L)$ be a disjunctive action landmark. The minimum saturated cost function for $cal(L)$ is:
 
 $display("mscf" = cases( limits(min)_(o' in cal(L)) "cost"(o')" if "o in cal(L), 0 "otherwise"))$


 == Optimal Cost Partitioning 

 - The Optimal Cost Partitioning can be calculated as an LP for disjunctive action landmarks. 
 - The bound is the $"cost"(o)$ as defined by the cost partitoning constraint.
 - The variables are the cost of the landmark.
 - The goal is to maximize their sum.

 *Dual*
 - This can be converted to the *dual*.
 - Instead the variables is whether an operator has been applied.
 - The goal is to minimize the sum of applied operators times their cost
    - $sum_o "Applied"_o dot "cost"(o)$ 
 - The constrain is that all landmarks must be hit.
    - $limits(sum)_(o in L) "Applied"_o gt.eq 1$ for all landmarks $L$.



== Post-hoc Optimization ($h^("PhO")$)

 - $ h^(G) lt.eq h^("PhO") lt.eq h^"OCP"$

Assuming that you have a PDB, you can optimize them even further with LPs. Operators can be included if they affect an abstraction $alpha$ i.e., the $ell$ moves into a new abstract state ($s eq.not t$)
#image("../images/pho.png")
 
