// DO WORK!!!
#let styleheading(title,doc) = {
  show heading.where(level: 1): [
    #block(
      inset: (top: 20pt, bottom: 10pt),
      block(
        block(
        stroke: (left: 12pt + blue),
        inset: (left: 24pt, top: 12pt, bottom: 6pt),
        outset: (left: -6pt),
      )[
        #text(size: 28pt, fill: blue, title)
      ])
    )
  ]
  heading(level: 1, outlined: false, title)
  doc
}

#let styleheading_head(title,doc) = {
  show heading.where(level: 1): [
    #block(
      inset: (top: 20pt, bottom: 10pt),
      block(
        block(
        stroke: (left: 12pt + blue),
        inset: (left: 24pt, top: 12pt, bottom: 6pt),
        outset: (left: -6pt),
      )[
        #text(size: 28pt, fill: blue, title)
      ])
    )
  ]
  heading(level: 1, outlined: true, title)
  doc
}


#let styleheading1(title) = {
  show heading.where(level: 1): [
    #block(
      inset: (top: 20pt, bottom: 10pt),
      block(
        block(
        stroke: (left: 12pt + blue),
        inset: (left: 24pt, top: 12pt, bottom: 6pt),
        outset: (left: -6pt),
      )[
        #text(size: 28pt, fill: blue, title)
      ])
    )
  ]
  heading(level: 1, outlined: false, title)
}

#let styleheading_chapter(title,chaptnumber) = {
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
            #counter(heading).update(chaptnumber)
            Chapter #text(size: 28pt, counter(heading).display()) \
            #text(size: 28pt, fill: blue, it.body)
        ])
        )
  }
  
    heading(level: 1, title)
}



