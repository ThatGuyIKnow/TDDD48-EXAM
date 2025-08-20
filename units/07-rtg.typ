#let hmax = $h^"max"$
#let hadd = $h^"add"$
#let hplus = $h^"+"$
#let hff = $h^"FF"$


= Relaxed Task Graph (RTG)
$o_1 = angle.l c or (a and b), c and ((c and d) triangle.r e), 1 angle.r$\
$o_2 = angle.l top, f, 2 angle.r$\
$o_3 = angle.l f, g, 1 angle.r$ \
$o_4 = angle.l f, h, 1 angle.r$\
#image("../images/rtg.png", width: 90%)

== Simplified RTG

 - This is just the RTG without effect nodes

== $h^"max"$ & $h^"add"$ 

- $h^"max" lt.eq h^+ lt.eq h^"FF" lt.eq h^"add"$
- $h^"max"(s)= infinity arrow.l.r  h^"+"(s)= infinity arrow.l.r h^"FF"(s)= infinity arrow.l.r h^"add"(s)= infinity $
- #hmax and #hplus $arrow.r$ admissible and consistent
- #hadd and #hff $arrow.r$ NOT admissible and consistent
- All are safe and goal-aware.

#image("../images/hmax-hadd.png", width: 90%)
Above, only nodes where $h^"max"$ (left) and $h^"add"$ (right) differ are recorded.

 - $h^"max"$: Pick the max predecessor at AND node, and the min at OR
 - $h^"add"$: Add the predecessors at AND node, and pick the min at OR
 - Both can be computed efficently by expanding the minimum/newest node that CAN be updated


== $h^"FF"$ and Best Achiever Graphs ($G$)

 - BAG can be achieved by removing all incoming edges into a OR node, except the minimum cost one

 #image("../images/best-achiever-graph.png", width: 00%)

  - $h^"FF"$ can be achieved by adding all operators participating in the $G^"add"$ for $h^"add"$
  - $G$ are also useful for analysis when $h^"add"$ overapprox and when $h^"max"$ under approx.
