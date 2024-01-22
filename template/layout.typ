#let project(title: "", author: "", logo: none, body) = {
  set document(author: author, title: title)

  // ***************************************
  // Style
  // ***************************************

  // Set commands
  set par(justify: true)
  set text(size: 12pt)
  set heading(numbering: "1.")
  set list(tight: false)
  set block(above: 1em, below: 1.5em)
  set bibliography(style: "apa")
  set math.equation(numbering: "(1)")

  // Show commands for Headings
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(above: 2em, text(size: 2em, it.body))
  }
  show heading.where(level: 2): it => {
    pagebreak(weak: true)
    block(above: 2em, text(size: 1.5em, it))
  }
  show heading.where(level: 3): it => {
    block(above: 2em, text(size: 1.2em, it))
  }

  // Show commands for Outline
  show outline.entry.where(level: 1): it => {
    v(0.5em)
    upper(it)
  }
  show outline.entry.where(level: 2): it => {
    strong(it)
  }

  // ***************************************
  // Contents
  // ***************************************

  // Title Page
  v(2fr)
  text(size: 4em, weight: 700, title)
  v(1fr)
  text(size: 1em, weight: 700, author)
  linebreak()
  datetime.today().display("[month repr:long] [day], [year]")
  v(1fr)
  pagebreak()

  // Page numbers
  set page(numbering: "i")
  counter(page).update(1)

  // Table of Contents
  outline(depth: 3, indent: true)
  pagebreak()

  // Page numbers
  set page(numbering: "1")
  counter(page).update(1)

  // Body
  body
}
