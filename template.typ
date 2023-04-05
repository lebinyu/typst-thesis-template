// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!

#let titlepage(title:"", supervisor: (), group_name: "", institute: "", author: "", ID: "", address: (), email: "", closing_date: "") = {
  set document(title: title, author: author)
  set page(margin: (x: 3cm))
  pagebreak(weak: true)
  
    linebreak() * 4
  align(center)[
    #image(width: 9cm ,"figure/uzh_logo.png")
  ]
  linebreak() * 3
  
  align(center)[
    #block(text(weight: 100, 1.75em, "Master Thesis"))
  ] 
  align(center)[
    #block(text(weight: 700, 1.75em, title))
  ]  
  linebreak() * 3

  align(center)[
    #block(text(weight: 100, 1.3em, "Supervisors:"))
  ]

  align(center)[
    #supervisor.join(", ", last: " and ")
  ]
  linebreak() * 3

  align(center)[
    #block(text(weight: 400, 1.75em, group_name))
  ]  
  linebreak() * 3

  align(center)[
    #block(text(weight: 400, 1.75em, institute))
  ] 
  linebreak() * 3

  grid(
    columns: (1fr, 1fr),
    gutter: 5pt,
    row-gutter: 0.65em,//0.65em is default spacing betwen line
    
    align(right)[Author:],
    align(left)[#author],
    
    align(right)[Student ID:],
    align(left)[#ID],
    
    align(right)[Address],
    align(left)[
      #for c in address [
        #c \
      ]    
    ],

    
    align(right)[E-mail:],
    align(left)[#email],

    align(right)[Closing date:],
    align(left)[#closing_date],
  )

  pagebreak(weak: true)
}





#let chapterpage(
  chapterheading: "",
  introduction: "",
  mainbody: "",
  title:""
) = {
  set page(
    margin: (x: 3cm),
    numbering: "- 1 -",
    header: none
  )
  
  pagebreak(weak: false)

  show heading.where(level: 1): it => { 
    block(
      inset: (top: 20pt, bottom: 10pt),
      block(
        block(
        stroke: (left: 12pt + blue),
        inset: (left: 24pt, top: 12pt, bottom: 6pt),
        outset: (left: -6pt),
      )[
        #set text(font: "Technika", size: 18pt)
        #set par(leading: 0.5em)
        Chapter #text(size: 28pt, counter(heading).display()) \
        #text(size: 28pt, fill: blue, it.body)
      ])
    )
  }
  
  heading(level: 1, chapterheading)
  
  //outline(indent: true, title: none, depth: 3)

  align(bottom)[#text(introduction)]

  pagebreak(weak: true)  

    set page(
    margin: auto,
    header: locate(
      loc => {
        let elems = query(
          heading,
          before: loc,
        )
        if calc.even(loc.page()){
          if elems == () {
            align(right, title)
          } else {
            let body = elems.last().body
            smallcaps(emph([#text(counter(heading).display()) ] + body) + h(1fr) + title )
            line(length: 100%)
          }
        } else {
          if elems == () {
            align(right, title)
          } else {
            let body = elems.last().body
            smallcaps( title + h(1fr) + emph([#text(counter(heading).display()) ] + body))
            line(length: 100%)
          }
        }
      }
    )
  )
  mainbody
  
}
