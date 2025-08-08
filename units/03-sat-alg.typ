#import "@preview/algorithmic:1.0.3"
#import algorithmic: algorithm-figure, style-algorithm
#show: style-algorithm

= SAT Planning style-algorithm
#algorithm-figure("SAT Planning", {
  import algorithmic: *

  Procedure("satplan", ["Pi"], {
    For("T in {0, 1, 2, ...}", {

       Assign[$phi$][$"build_sat_formula"(Pi, T)$]
      
      Assign[$I$][$"sat_solver"(phi)$]
      
      If("I != none", {
      
        Return[$"extract_plan"(Pi, T, I)$]
      
      })
    })
  })
})

