== SAT: Operator Selection Clauses
- $o^i_j$ (operator chosen at step $i$)
- $o^i_1 or ... or o^i_n$  for $1 lt.eq i lt.eq T$
- $not o^i_j or not o^i_k$ for $1 lt.eq i lt.eq T$, $1 lt.eq j < k lt.eq n$ (at most one operator per step)
  - This is equal to $not (o^i_j and o^i_k)$ 
== Transition Clauses

*Precondition:*
- $not o^i  or "pre"(o)^(i-1)$ for $1 lt.eq i lt.eq T$, $o in O$

*Positive/Negative Effects Clauses:*
- $not o^i  or not alpha^(i-1) or v^i$
- $not o^i  or alpha^(i-1) or not delta^(i-1) or not v^i$

*Positive/Negative Frame Clauses:*
- $not o^i  or not v^(i-1) or delta^(i-1) or v^i$
- $not o^i  or alpha^(i-1) or v^(i-1) or not v^i$

where  
$alpha = "effcond"(v, "eff"(o))$  
$delta = "effcond"(not v, "eff"(o))$
