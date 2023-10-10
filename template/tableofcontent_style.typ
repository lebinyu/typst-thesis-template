#import "global_style.typ": *

#let tableofcontent() = {
  set page(
    // footer: [
    //     #counter(page).display("I")
    // ],
    numbering: "I"
  )

  show outline.entry.where(
    level: 1
    ): it => {
    v(12pt, weak: true)
    strong(it)
  }
  
//   show heading.where(level: 1): it => { 
//   block(
//       inset: (top: 20pt, bottom: 10pt),
//       block(
//         block(
//         stroke: (left: 12pt + blue),
//         inset: (left: 24pt, top: 12pt, bottom: 6pt),
//         outset: (left: -6pt),
//       )[
//         #text(size: 28pt, fill: blue, it.body)
//       ])
//     )
//   }
  
//   show: styleheading1("Table of Content")



show outline: it => {
    show heading: styleheading1("Table of Content")
    it
}
outline(
    indent: true,
    title: "Table of Content",
  )

  pagebreak(weak: true)

//   counter(page).update(0)
//   counter(heading).update(1)
}