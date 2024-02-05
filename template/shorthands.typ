// Math Helpers
#let bx = math.bold("x")
#let bz = math.bold("z")
#let bw = math.bold("w")
#let cL = math.cal("L")

#let DKL = $D_"KL"$

// Equation Helpers
// #let eqnum = math.equation.with(block: true, numbering: "(1)")
#let eqlab(eq, lab) = {
  [
    #math.equation(eq, block: true, numbering: "(1)")
    #label(lab)
  ]
}

// Citation Helpers
#let prose = cite.with(form: "prose")
// #let prose = (citation) => {
//   set cite(form: "prose")
//   citation
// }