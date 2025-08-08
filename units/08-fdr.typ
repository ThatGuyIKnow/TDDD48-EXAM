= Invariant/Mutex/FDR

 - Validating invariant is AS HARD as planning.
 - Mutex group is a set of variables where AT MOST one can be true
 - A Mutex cover is a set of mutex groups where each variable occurs in exactly one group
 - A mutex group is positive if it contains no negations of variables

== Mutex-based Reformulation of Propositional

Given a conflict-free propositional planning task $Pi$ w/ positive mutex cover ${G_1, ..., G_N}$
 - In all condition where variable $v in G_i$ occurs, replace v with $v_G_i:=v$
 - In all effects $e$ where variable $v in G_i$ occurs,
   - Replace all atomic add effects $v$ with $v_G_i := v$
   - Replace all atomic delete effects $not v$ with:
      - $(v_G_i = v and not or.big_(v' in G_i\\{v}) "effcond"(v', e)) triangle.r v_G_i := "none"$
      - Practically, this means, if $v_G_i$ is being deleted AND IS NOT BEING SET TO ANOTHER VARIABLE, set it to none. This is keep it conflict-free. 

The consistency condition $"consist"(e)$ prohibits two simultaneous assignments to the same mutex group.\
I.e. $not ("effcond"(v:=d, e) and "effcond"(v:=d', e))$

== SAS+

An operator of an FDR operator is a SAS+ operator if 
 - $"pre"(o)$ is a satisfiable conjunction of atoms, and
 - $"eff"(o)$ is a conflict-free conjunction of atomic effects.

An FDR task is a SAS+ task if all operators are SAS+ and the goal is a satisfiable conjunction of atoms
