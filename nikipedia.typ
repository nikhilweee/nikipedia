#import "template/layout.typ": project

#show: project.with(title: "Nikipedia", author: "Nikhil Verma")

= Concepts
#include "concepts/concepts.typ"

= Papers
#include "papers/2305-18290.typ"

#bibliography("references/references.bib")