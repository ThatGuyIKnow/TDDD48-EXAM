#import "@preview/summy:0.1.0": *

#set text(font: "Helvetica")

#show: cheatsheet.with(
  title: "Cheatsheet Title", 
  authors: "Authors",
  write-title: false,
  font-size: 5.5pt,
  line-skip: 5.5pt,
  x-margin: 30pt,
  y-margin: 30pt,
  num-columns: 5,
  column-gutter: 4pt,
  numbered-units: false,
)

#include "units/00-def-transition-system.typ"
#include "units/01-satisfy-eq.typ"
#include "units/02-regress.typ"
#include "units/03-sat-alg.typ"
#include "units/04-sat-cnf-encoding.typ"
#include "units/05-bdd-complex.typ"
#include "units/bdd-op.typ"
#include "units/06-bdd-apply-alg.typ"
#include "units/07-rtg.typ"
#include "units/08-fdr.typ"
#include "units/09-abstractions.typ"
#include "units/10-merge-and-shrink.typ"
#include "units/11-landmarks.typ"
#include "units/12-integer-and-linear-programs.typ"
